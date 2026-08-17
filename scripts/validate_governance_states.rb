#!/usr/bin/env ruby
require 'date'
require 'open3'
require 'psych'
require 'set'
require 'time'

ROOT = File.expand_path(ARGV[0] || '..', __dir__)
DOC_STATES = %w[Idea Draft Review Accepted Canonical Implemented Superseded].freeze
AD_STATES = ['Draft','Pending','Architecture Review','Accepted','Implemented','Verified','Superseded'].freeze
WP_STATES = ['Planned','Ready','In Progress','Verification','Closed','Cancelled'].freeze
DOC_EDGES = DOC_STATES.each_cons(2).to_a.freeze
AD_EDGES = AD_STATES.each_cons(2).to_a.freeze
WP_EDGES = [['Planned','Ready'],['Ready','In Progress'],['In Progress','Verification'],['Verification','Closed'],['Planned','Cancelled'],['Ready','Cancelled'],['In Progress','Cancelled']].freeze
ROLES = ['Project Lead','Document Owner','Reviewer','Responsible Reviewer','Architecture Board','Governance Architecture','Governance Review','Governance Process','Terminology Governance','Documentation Architecture','Product Governance','Architecture Decision Governance'].freeze
FOREIGN_STATE_FIELDS = %w[status ad_status review_phase review_status release_stage].freeze
REQUIRED_WP_FIELDS = %w[work_package_id version work_package_status owner findings architecture_decisions transition_history evidence_references gate_evidence closure_evidence historical_completeness].freeze

class GovernanceStateValidator
  attr_reader :errors, :warnings, :counts
  def initialize(root)
    @root=File.expand_path(root); @errors=[]; @warnings=[]
    @counts={documents:0, architecture_decisions:0, work_packages:0, carriers:0, transitions:0, gates:0}
  end
  def rel(path) path.delete_prefix(@root+'/') end
  def yaml_frontmatter(path)
    text=File.read(path); match=text.match(/\A---\s*\n(.*?)\n---\s*\n/m); return [nil,text] unless match
    [Psych.safe_load(match[1], permitted_classes:[Date], aliases:false),text]
  rescue Psych::Exception => e
    @errors << "#{rel(path)}: invalid YAML frontmatter (#{e.message})"; [nil,text||'']
  end
  def git(*args)
    Open3.capture3('git','-C',@root,*args)
  end
  def git_object?(sha)
    _,_,status=git('cat-file','-e',"#{sha}^{commit}"); status.success?
  end
  def resolve(ref)
    return false unless ref.is_a?(String) && !ref.empty?
    return git_object?(ref.delete_prefix('git:')) if ref.start_with?('git:')
    File.file?(File.join(@root,ref))
  end
  def refs(label,value,allow_empty:false)
    unless value.is_a?(Array) && (allow_empty || !value.empty?)
      @errors << "#{label}: must be #{allow_empty ? 'a' : 'a non-empty'} list"; return false
    end
    value.each{|ref| @errors << "#{label}: unresolved evidence reference #{ref.inspect}" unless resolve(ref)}
    true
  end
  def version_statuses(text)
    rows=text.lines.filter_map do |line|
      cells=line.split('|').map(&:strip)
      next unless cells.length>=5 && cells[1].match?(/\A\d+\.\d+\.\d+\z/)
      cells[3] if DOC_STATES.include?(cells[3])
    end
    rows.reverse
  end
  def prior_frontmatter(path)
    out,_,status=git('show',"HEAD:#{rel(path)}"); return nil unless status.success?
    match=out.match(/\A---\s*\n(.*?)\n---\s*\n/m); match && Psych.safe_load(match[1],permitted_classes:[Date],aliases:false)
  rescue Psych::Exception; nil end
  def validate_documents
    Dir.glob(File.join(@root,'project-bible/governance/PB-*.md')).sort.each do |path|
      data,text=yaml_frontmatter(path); next unless data
      @counts[:documents]+=1
      id=data['document_id']||rel(path)
      status=data['status']
      @errors << "#{id}: invalid document status #{status.inspect}" unless DOC_STATES.include?(status)
      history=version_statuses(text)
      history.each_cons(2) do |a,b|
        next if a==b
        @errors << "#{id}: invalid document status transition #{a.inspect} -> #{b.inspect}" unless DOC_EDGES.include?([a,b])
      end
      prior=prior_frontmatter(path)
      if prior && prior['status']!=status && DOC_STATES.include?(prior['status']) && DOC_STATES.include?(status)
        edge=[prior['status'],status]
        @errors << "#{id}: invalid document status transition #{edge[0].inspect} -> #{edge[1].inspect}" unless DOC_EDGES.include?(edge)
        if status=='Canonical'
          @counts[:gates]+=1
          @errors << "#{id}: Canonical gate missing Accepted predecessor" unless prior['status']=='Accepted'
          @errors << "#{id}: Canonical gate missing completed/passed review evidence" unless canonical_review_evidence?(id,data['version'])
        elsif status=='Implemented'
          @counts[:gates]+=1
          refs("#{id}: Implemented gate",data['implementation_evidence'])
        elsif status=='Superseded'
          @counts[:gates]+=1
          successor=data['superseded_by']
          @errors << "#{id}: Superseded gate requires identified successor revision" unless successor.is_a?(String) && !successor.empty?
        end
      end
    end
  end
  def canonical_review_evidence?(id,version)
    runs=Dir.glob(File.join(@root,'project-bible/evidence/review-release/RVR-*.yml')).filter_map{|p| Psych.safe_load_file(p,aliases:false) rescue nil}
    results=Dir.glob(File.join(@root,'project-bible/evidence/review-release/RES-*.yml')).filter_map{|p| Psych.safe_load_file(p,aliases:false) rescue nil}
    run_ids=runs.select{|r| r['review_phase']=='Completed' && Array(r['baseline']).any?{|b| b['document_id']==id && b['version'].to_s==version.to_s}}.map{|r|r['artifact_id']||r['review_run_id']}
    results.any?{|r| r['review_status']=='Passed' && run_ids.include?(r['review_run_id'])}
  end
  def parse_ads
    path=File.join(@root,'project-bible/governance/PB-998_Architecture_Decisions.md'); text=File.read(path)
    entries=[]
    text.scan(/^## (AD-\d{3})\b(.*?)(?=^## AD-\d{3}\b|^# Versionshistorie)/m){|id,body| entries << [id,body[/^\*\*Status\*\*\s*\n\s*([^\n]+)/,1]&.strip,body]}
    entries
  end
  def historical_ad_statuses(id)
    unless defined?(@historical_ad_statuses) && @historical_ad_statuses
      @historical_ad_statuses=Hash.new{|h,k|h[k]=[]}
      out,_,status=git('log','--format=%H','--','project-bible/governance/PB-998_Architecture_Decisions.md')
      if status.success?
        out.lines.reverse_each do |sha|
          text,_,ok=git('show',"#{sha.strip}:project-bible/governance/PB-998_Architecture_Decisions.md")
          next unless ok.success?
          text.scan(/^## (AD-\d{3})\b(.*?)(?=^## AD-\d{3}\b|^# Versionshistorie)/m) do |ad,body|
            value=body[/^\*\*Status\*\*\s*\n\s*([^\n]+)/,1]&.strip
            @historical_ad_statuses[ad] << value if value && @historical_ad_statuses[ad].last!=value
          end
        end
      end
    end
    @historical_ad_statuses[id]
  end
  def validate_ads
    entries=parse_ads; @counts[:architecture_decisions]=entries.length
    entries.group_by(&:first).each{|id,v| @errors << "PB-998: duplicate Architecture Decision #{id}" unless v.one?}
    entries.each do |id,status,body|
      @errors << "#{id}: invalid AD status #{status.inspect}" unless AD_STATES.include?(status)
      sequence=historical_ad_statuses(id)
      sequence.each_cons(2){|a,b| @errors << "#{id}: invalid AD status transition #{a.inspect} -> #{b.inspect}" if AD_STATES.include?(a)&&AD_STATES.include?(b)&&AD_STATES.index(b)<AD_STATES.index(a)}
      if status=='Implemented' && !sequence.include?('Accepted')
        @errors << "#{id}: Implemented requires prior Accepted"
      elsif status=='Verified' && (!sequence.include?('Accepted') || !sequence.include?('Implemented'))
        @errors << "#{id}: Verified requires prior Accepted and Implemented"
      elsif status=='Superseded' && !body.match?(/\bsupersedes\b.*AD-\d{3}/mi)
        @errors << "#{id}: Superseded requires directed supersession evidence"
      end
    end
  end
  def validate_work_packages
    dir=File.join(@root,'project-bible/evidence/work-packages'); paths=Dir.glob(File.join(dir,'*.y{a,}ml')).sort
    ids=Hash.new{|h,k|h[k]=[]}
    carriers=[]
    paths.each do |path|
      data=Psych.safe_load_file(path,aliases:false)
      unless data.is_a?(Hash); @errors << "#{rel(path)}: carrier must be an object"; next end
      carriers << [path,data]; ids[data['work_package_id']] << path
    rescue Psych::Exception => e
      @errors << "#{rel(path)}: invalid YAML (#{e.message})"
    end
    @counts[:carriers]=carriers.length
    ids.each{|id,ps| @errors << "work package #{id.inspect}: duplicate carriers #{ps.map{|p|rel(p)}.join(', ')}" unless ps.one?}
    expected=(1..7).map{|n|format('WP-%03d',n)}
    expected.each{|id| @errors << "#{id}: exactly one carrier required" unless ids[id]&.one?}
    carriers.each{|path,data| validate_carrier(path,data)}
    @counts[:work_packages]=ids.keys.compact.uniq.length
  end
  def validate_carrier(path,d)
    label=rel(path); id=d['work_package_id']; expected_name="#{id}.yml"
    @errors << "#{label}: filename must be #{expected_name}" unless File.basename(path)==expected_name
    missing=REQUIRED_WP_FIELDS-d.keys; @errors << "#{label}: missing fields #{missing.join(', ')}" unless missing.empty?
    @errors << "#{label}: invalid work_package_id #{id.inspect}" unless id.is_a?(String)&&id.match?(/\AWP-\d{3}\z/)
    @errors << "#{label}: version must be MAJOR.MINOR.PATCH" unless d['version'].is_a?(String)&&d['version'].match?(/\A\d+\.\d+\.\d+\z/)
    @errors << "#{label}: invalid work-package status #{d['work_package_status'].inspect}" unless WP_STATES.include?(d['work_package_status'])
    foreign=FOREIGN_STATE_FIELDS & d.keys; @errors << "#{label}: carrier attempts to set foreign state dimensions #{foreign.join(', ')}" unless foreign.empty?
    @errors << "#{label}: owner must name exactly one controlled role" unless d['owner'].is_a?(String)&&ROLES.include?(d['owner'])
    %w[findings architecture_decisions].each{|key| @errors << "#{label}: #{key} must be a unique list" unless d[key].is_a?(Array)&&d[key].uniq.length==d[key].length}
    ad_status=parse_ads.to_h{|ad,status,_|[ad,status]}
    Array(d['architecture_decisions']).each do |ad|
      @errors << "#{label}: Architecture Decision #{ad.inspect} does not resolve in PB-998" unless ad_status.key?(ad)
    end
    refs("#{label}: evidence_references",d['evidence_references'])
    completeness=d['historical_completeness']; complete=completeness.is_a?(Hash)&&completeness['status']=='complete'
    unless completeness.is_a?(Hash)&&%w[complete incomplete].include?(completeness['status'])
      @errors << "#{label}: historical_completeness status must be complete or incomplete"
    end
    if completeness.is_a?(Hash)&&completeness['status']=='incomplete'
      details=completeness['missing_transition_details']; @errors << "#{label}: incomplete history must identify missing transition details" unless details.is_a?(Array)&&!details.empty?&&details.all?{|x|x.is_a?(String)&&!x.empty?}
    end
    history=d['transition_history']; unless history.is_a?(Array); @errors << "#{label}: transition_history must be a list"; return end
    @errors << "#{label}: complete history cannot be empty" if complete&&history.empty?
    previous_time=nil; prior_new=nil
    history.each_with_index do |event,i|
      @counts[:transitions]+=1; elabel="#{label}: transition #{i+1}"
      unless event.is_a?(Hash); @errors << "#{elabel} must be an object"; next end
      required=%w[previous new timestamp evidence_references]
      @errors << "#{elabel}: missing required fields" unless required.all?{|k|event.key?(k)} && (event.key?('actor')||event.key?('responsible_role'))
      edge=[event['previous'],event['new']]; @errors << "#{elabel}: invalid transition #{edge.inspect}" unless WP_EDGES.include?(edge)
      role=event['actor']||event['responsible_role']; @errors << "#{elabel}: unknown State Keeper role #{role.inspect}" unless ROLES.include?(role)
      begin time=Time.iso8601(event['timestamp'].to_s); rescue ArgumentError; time=nil; @errors << "#{elabel}: timestamp must be ISO-8601" end
      @errors << "#{elabel}: timestamps are not monotone" if time&&previous_time&&time<previous_time
      @errors << "#{elabel}: interrupted history" if prior_new&&event['previous']!=prior_new
      refs("#{elabel}: evidence_references",event['evidence_references'])
      unless transition_supported?(event,role)
        @errors << "#{elabel}: claimed complete transition details are not supported by referenced evidence"
      end
      previous_time=time if time; prior_new=event['new']
    end
    if complete && history.last.is_a?(Hash) && history.last['new']!=d['work_package_status']
      @errors << "#{label}: current status differs from complete history endpoint"
    end
    validate_wp_gates(label,d)
  end
  def transition_supported?(event,role)
    texts=Array(event['evidence_references']).filter_map do |ref|
      next if ref.to_s.start_with?('git:')
      path=File.join(@root,ref.to_s); File.read(path) if File.file?(path)
    end
    required=[event['previous'],event['new'],event['timestamp'],role].map(&:to_s)
    texts.any?{|text| required.all?{|value| text.include?(value)}}
  end
  def validate_wp_gates(label,d)
    gates=d['gate_evidence']; unless gates.is_a?(Hash); @errors << "#{label}: gate_evidence must be an object"; return end
    allowed=%w[ready verification closed]; unknown=gates.keys-allowed
    @errors << "#{label}: gate attempts to set a foreign state dimension #{unknown.join(', ')}" unless unknown.empty?
    if d['work_package_status']=='Ready'
      @counts[:gates]+=1; decisions=d['architecture_decisions']
      @errors << "#{label}: Ready requires prerequisite Architecture Decisions" if !decisions.is_a?(Array)||decisions.empty?
      ad_status=parse_ads.to_h{|id,status,_|[id,status]}; Array(decisions).each{|ad| @errors << "#{label}: Ready requires #{ad} Accepted" unless ad_status[ad]=='Accepted'}
      refs("#{label}: Ready gate",gates['ready'])
    end
    if d['work_package_status']=='Verification'
      @counts[:gates]+=1; refs("#{label}: Verification gate",gates['verification'])
    end
    if d['work_package_status']=='Closed'
      @counts[:gates]+=1; closed=gates['closed']
      unless closed.is_a?(Hash); @errors << "#{label}: Closed gate must be an object"; return end
      %w[approval definition_of_done verification closure].each{|key| refs("#{label}: Closed #{key} gate",closed[key])}
      refs("#{label}: closure_evidence",d['closure_evidence'])
      Array(d['closure_evidence']).each{|ref| @errors << "#{label}: closure evidence must resolve to a persisted Closure Report" unless ref.is_a?(String)&&ref.match?(/Closure_Report\.md\z/)&&resolve(ref)}
    end
  end
  def run
    validate_documents; validate_ads; validate_work_packages; self
  end
end

if $PROGRAM_NAME==__FILE__
  validator=GovernanceStateValidator.new(ROOT).run
  if validator.errors.empty?
    puts 'Governance state validation passed.'
    puts "Documents checked: #{validator.counts[:documents]}"
    puts "Architecture Decisions checked: #{validator.counts[:architecture_decisions]}"
    puts "Work Packages checked: #{validator.counts[:work_packages]}"
    puts "State carriers checked: #{validator.counts[:carriers]}"
    puts "Transitions checked: #{validator.counts[:transitions]}"
    puts "Gates checked: #{validator.counts[:gates]}"
    puts "Errors: 0"
    puts "Warnings: #{validator.warnings.length}"
  else
    warn validator.errors.join("\n")
    warn "Governance state validation failed with #{validator.errors.length} error(s)."
    exit 1
  end
end
