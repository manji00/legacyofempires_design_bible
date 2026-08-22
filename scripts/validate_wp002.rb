#!/usr/bin/env ruby
require "date"
require "open3"
require "time"
require "psych"

ROOT = File.expand_path(ARGV[0] || "..", __dir__)
REPO = File.expand_path("..", __dir__)
DIR = File.join(ROOT, "project-bible/evidence/review-release")
CLASSES = %w[review_run finding correction reverification review_result release].freeze
IDS = {"review_run"=>["review_run_id",/\ARVR-\d{6}\z/], "reverification"=>["review_run_id",/\ARVR-\d{6}\z/], "finding"=>["finding_id",/\AFND-\d{6}\z/], "correction"=>["correction_id",/\ACOR-\d{6}\z/], "review_result"=>["review_result_id",/\ARES-\d{6}\z/], "release"=>["release_id",/\AREL-\d{6}\z/]}.freeze
REQUIRED = {
  "review_run"=>%w[artifact_class version review_run_id baseline change_class review_level required_approval_roles review_phase phase_history finding_ids reverification_review_run_ids traceability],
  "finding"=>%w[artifact_class version finding_id origin_review_run_id affected_baseline scope_location statement violated_requirement release_blocking release_blocking_rationale correction_ids verification_review_run_ids lifecycle_history],
  "correction"=>%w[artifact_class version correction_id finding_id affected_baseline changed_files implementation_commit responsible_role timestamp description],
  "reverification"=>%w[artifact_class version review_run_id original_review_run_id finding_ids baseline method result responsible_role timestamp evidence_references],
  "review_result"=>%w[artifact_class version review_result_id review_run_id baseline review_status responsible_role approval_evidence approval_decision timestamp finding_ids verification_evidence],
  "release"=>%w[artifact_class version release_id baseline review_run_id review_result_id review_result open_release_blocking_findings required_approval_roles actual_approval_roles approval_decision timestamp evidence_references release_stage authorized_by scope_note]
}.freeze
STATE_FIELDS=%w[status review_phase review_status ad_status work_package_status release_stage].freeze
STATE_OWNER={"review_run"=>%w[review_phase],"review_result"=>%w[review_status],"release"=>%w[release_stage]}.freeze
PHASES=%w[Planned In\ Review Rework Decision Completed Cancelled].freeze
PHASE_TRANSITIONS=[["Planned","In Review"],["In Review","Rework"],["In Review","Decision"],["Rework","In Review"],["Decision","Rework"],["Decision","Completed"],["Planned","Cancelled"],["In Review","Cancelled"],["Rework","Cancelled"]].freeze
FINDING_TRANSITIONS=[[nil,"Recorded"],["Recorded","Correction Required"],["Correction Required","Awaiting Verification"],["Awaiting Verification","Correction Required"],["Awaiting Verification","Closed"],["Closed","Reopened"],["Reopened","Correction Required"]].freeze
REVIEW_STATUSES=["Pending","Changes Required","Passed","Rejected","Cancelled"].freeze
RELEASE_STAGES=["Unreleased","Release Candidate","Released","Withdrawn"].freeze
REVIEW_LEVEL_ROLES={"Lightweight Review"=>["Document Owner"],"Standard Review"=>["Document Owner","Project Lead"],"Architecture Review"=>["Architecture Board"]}.freeze
APPROVAL_DECISIONS=["Approved","Not Approved"].freeze
# PB-000/PB-997 name these execution and authority roles.  The two Governance
# Review labels are retained vocabulary used by the persisted WP-002 evidence;
# accepting them as roles does not assign either label any additional authority.
ROLE_DOMAIN=["Document Owner","Delegated Reviewer","Responsible Reviewer",
  "Governance Reviewer","Governance Review","Project Lead",
  "Architecture Board","Work-Package Owner"].freeze

def present?(v) = !v.nil? && (!v.respond_to?(:empty?) || !v.empty?)
def timestamp?(v)
  !!(v.is_a?(String) && v.match?(/\A\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z\z/) && Time.iso8601(v))
rescue ArgumentError
  false
end
def git_commit?(sha)
  return false unless sha.to_s.match?(/\A[0-9a-f]{40}\z/)
  system("git","-C",REPO,"cat-file","-e","#{sha}^{commit}",out:File::NULL,err:File::NULL)
end
def artifact_path(id)
  return "project-bible/governance/PB-999_Editorial_Backlog.md" if id=="PB-999"
  Dir.glob(File.join(REPO,"project-bible/**/*.md")).find { |p| File.basename(p).start_with?("#{id}_") }&.delete_prefix("#{REPO}/")
end
def artifact_meta(commit,id)
  path=artifact_path(id); return nil unless path
  raw,st=Open3.capture2("git","-C",REPO,"show","#{commit}:#{path}"); return nil unless st.success?
  fm=raw[/\A---\n(.*?)\n---/m,1]; fm && Psych.safe_load(fm,permitted_classes:[Date],aliases:false)
rescue Psych::Exception
  nil
end
def baseline_valid?(b,errors,label)
  unless b.is_a?(Array)&&!b.empty?; errors << "#{label}: baseline missing"; return false; end
  b.each do |x|
    unless x.is_a?(Hash)&&%w[artifact_id version commit included_scope excluded_scope].all?{|k|present?(x[k])}; errors << "#{label}: incomplete baseline"; next; end
    errors << "#{label}: invalid baseline version" unless x["version"].to_s.match?(/\A\d+\.\d+\.\d+\z/)
    unless git_commit?(x["commit"]); errors << "#{label}: baseline commit does not resolve #{x['commit']}"; next; end
    meta=artifact_meta(x["commit"],x["artifact_id"])
    errors << "#{label}: artifact/version not present at baseline commit" unless meta && meta["document_id"]==x["artifact_id"] && meta["version"].to_s==x["version"].to_s
  end
  true
end

def history_valid(history,transitions,errors,label)
  unless history.is_a?(Array)&&!history.empty?; errors << "#{label}: history missing"; return; end
  previous=nil; last_time=nil
  history.each_with_index do |e,i|
    unless e.is_a?(Hash); errors << "#{label}: history event invalid"; next; end
    %w[to role timestamp evidence].each{|k|errors << "#{label}: history event missing #{k}" unless present?(e[k])}
    errors << "#{label}: invalid history role #{e['role'].inspect}" unless ROLE_DOMAIN.include?(e["role"])
    errors << "#{label}: interrupted history" if i>0 && e["from"]!=previous
    errors << "#{label}: invalid transition #{e['from'].inspect}->#{e['to'].inspect}" unless transitions.include?([e["from"],e["to"]])
    if timestamp?(e["timestamp"])
      now=Time.iso8601(e["timestamp"]); errors << "#{label}: non-monotone timestamps" if last_time && now<last_time; last_time=now
    else errors << "#{label}: invalid timestamp" end
    previous=e["to"]
  end
end

errors=[]; records=[]
Dir.glob(File.join(DIR,"*.yml")).sort.each do |path|
  begin
    d=Psych.safe_load_file(path,permitted_classes:[Date],aliases:false)
    unless d.is_a?(Hash); errors << "#{path}: record must be object"; next end
    records << [path,d]
  rescue Psych::Exception=>e; errors << "#{path}: invalid YAML #{e.message.lines.first.strip}" end
end
errors << "no controlled evidence records" if records.empty?
records.each do |path,d|
  klass=d["artifact_class"]
  unless CLASSES.include?(klass); errors << "#{path}: invalid artifact_class #{klass.inspect}"; next end
  errors << "#{path}: invalid evidence version" unless d["version"].to_s.match?(/\A\d+\.\d+\.\d+\z/)
  REQUIRED[klass].each{|k|errors << "#{path}: required field missing #{k}" unless present?(d[k]) || d[k]==false || (d[k].is_a?(Array)&&%w[finding_ids reverification_review_run_ids open_release_blocking_findings].include?(k))}
  bad=(STATE_FIELDS & d.keys)-Array(STATE_OWNER[klass]); errors << "#{path}: evidence sets foreign state #{bad.join(',')}" unless bad.empty?
  baseline_valid?(d["baseline"],errors,path) if d.key?("baseline")
  baseline_valid?(d["affected_baseline"],errors,path) if d.key?("affected_baseline")
  errors << "#{path}: invalid timestamp" if d.key?("timestamp")&&!timestamp?(d["timestamp"])
  if d.key?("amendment_history")
    previous=nil
    Array(d["amendment_history"]).each do |event|
      errors << "#{path}: amendment history event incomplete" unless %w[version timestamp reason].all?{|k|present?(event[k])}
      if timestamp?(event["timestamp"])
        now=Time.iso8601(event["timestamp"]); errors << "#{path}: non-monotone amendment timestamps" if previous&&now<previous; previous=now
      else errors << "#{path}: invalid amendment timestamp" end
    end
  end
end
by_class=records.group_by{|_,d|d["artifact_class"]}
IDS.each do |klass,(field,pattern)|
  vals=Array(by_class[klass]).map{|_,d|d[field]}
  vals.each{|v|errors << "invalid #{field} #{v.inspect}" unless v.to_s.match?(pattern)}
  vals.tally.each{|id,n|errors << "duplicate #{field} #{id}" if present?(id)&&n>1}
end
runs=(Array(by_class["review_run"])+Array(by_class["reverification"])); run_map=runs.to_h{|_,d|[d["review_run_id"],d]}
findings=Array(by_class["finding"]); finding_map=findings.to_h{|_,d|[d["finding_id"],d]}
corrections=Array(by_class["correction"]); correction_map=corrections.to_h{|_,d|[d["correction_id"],d]}
revers=Array(by_class["reverification"]); results=Array(by_class["review_result"]); result_map=results.to_h{|_,d|[d["review_result_id"],d]}
releases=Array(by_class["release"])

Array(by_class["review_run"]).each do |path,d|
  errors << "#{path}: invalid review_phase" unless PHASES.include?(d["review_phase"])
  errors << "#{path}: invalid review_level" unless REVIEW_LEVEL_ROLES.key?(d["review_level"])
  history_valid(d["phase_history"],PHASE_TRANSITIONS,errors,path)
  errors << "#{path}: current review_phase differs from history endpoint" unless d.dig("phase_history",-1,"to")==d["review_phase"]
  expected=REVIEW_LEVEL_ROLES[d["review_level"]]||[]; errors << "#{path}: wrong required approval role" unless (expected-Array(d["required_approval_roles"])).empty?
  Array(d["required_approval_roles"]).each{|role|errors << "#{path}: invalid required approval role #{role.inspect}" unless ROLE_DOMAIN.include?(role)}
  Array(d["finding_ids"]).each{|id|errors << "#{path}: dangling Finding #{id}" unless finding_map[id]}
  Array(d["reverification_review_run_ids"]).each{|id|errors << "#{path}: dangling Re-Verification #{id}" unless run_map[id]&.dig("artifact_class")=="reverification"}
end
findings.each do |path,d|
  errors << "#{path}: Finding without Review Run" unless run_map[d["origin_review_run_id"]]&.dig("artifact_class")=="review_run"
  history_valid(d["lifecycle_history"],FINDING_TRANSITIONS,errors,path)
  Array(d["correction_ids"]).each{|id|errors << "#{path}: dangling Correction #{id}" unless correction_map[id]&.dig("finding_id")==d["finding_id"]}
  Array(d["verification_review_run_ids"]).each{|id|errors << "#{path}: dangling Re-Verification #{id}" unless run_map[id]&.dig("artifact_class")=="reverification"}
  Array(d["lifecycle_history"]).each do |e|
    if e["to"]=="Awaiting Verification"
      cor=correction_map[e["evidence"]]; errors << "#{path}: Awaiting Verification lacks matching Correction" unless cor&&cor["finding_id"]==d["finding_id"]&&git_commit?(cor["implementation_commit"])
    elsif e["to"]=="Closed"
      rv=run_map[e["evidence"]]; errors << "#{path}: Closed lacks successful matching Re-Verification" unless rv&&rv["artifact_class"]=="reverification"&&rv["result"]=="Passed"&&Array(rv["finding_ids"]).include?(d["finding_id"])&&rv["baseline"]==correction_map[Array(d["correction_ids"]).last]&.then{|c| c["affected_baseline"].map{|b| b.merge("version"=>rv["baseline"].find{|x|x["artifact_id"]==b["artifact_id"]}&.dig("version"),"commit"=>rv["baseline"].find{|x|x["artifact_id"]==b["artifact_id"]}&.dig("commit"))}}
    end
  end
end
corrections.each do |path,d|
  errors << "#{path}: Correction without Finding" unless finding_map[d["finding_id"]]&.then{|f|Array(f["correction_ids"]).include?(d["correction_id"])}
  errors << "#{path}: Correction without Implementation Commit" unless git_commit?(d["implementation_commit"])
  errors << "#{path}: invalid Correction responsible role #{d['responsible_role'].inspect}" unless ROLE_DOMAIN.include?(d["responsible_role"])
  Array(d["changed_files"]).each{|f|errors << "#{path}: implementation commit lacks changed artifact #{f}" unless system("git","-C",REPO,"cat-file","-e","#{d['implementation_commit']}:#{f}",out:File::NULL,err:File::NULL)}
end
revers.each do |path,d|
  original=run_map[d["original_review_run_id"]]; errors << "#{path}: Re-Verification without original Review Run" unless original&.dig("artifact_class")=="review_run"
  allowed=original&&REVIEW_LEVEL_ROLES[original["review_level"]]
  errors << "#{path}: wrong Re-Verification responsible role" unless allowed&.include?(d["responsible_role"])
  Array(d["finding_ids"]).each{|id|errors << "#{path}: Re-Verification without Finding #{id}" unless finding_map[id]&&Array(finding_map[id]["verification_review_run_ids"]).include?(d["review_run_id"])}
  errors << "#{path}: invalid Re-Verification result" unless %w[Passed Failed].include?(d["result"])
  Array(d["evidence_references"]).each do |ref|
    resolvable=correction_map[ref] || run_map[ref] || File.exist?(File.join(ROOT,ref.to_s))
    errors << "#{path}: dangling Evidence Reference #{ref}" unless resolvable
  end
end
results.each do |path,d|
  errors << "#{path}: invalid review_status" unless REVIEW_STATUSES.include?(d["review_status"])
  errors << "#{path}: invalid approval_decision" unless APPROVAL_DECISIONS.include?(d["approval_decision"])
  expected_decision=d["review_status"]=="Passed" ? "Approved" : "Not Approved"
  errors << "#{path}: review_status and approval_decision disagree" unless d["approval_decision"]==expected_decision
  run=run_map[d["review_run_id"]]
  errors << "#{path}: Review Result without Review Run" unless %w[review_run reverification].include?(run&.dig("artifact_class"))
  errors << "#{path}: Review Result baseline differs from Run" if run&&d["baseline"]!=run["baseline"]
  original=run&.dig("artifact_class")=="reverification" ? run_map[run["original_review_run_id"]] : run
  required=original&&REVIEW_LEVEL_ROLES[original["review_level"]]
  errors << "#{path}: wrong Approval Role" if required&&!required.include?(d["responsible_role"])
  relevant_findings=findings.select{|_,f|f["origin_review_run_id"]==original&.dig("review_run_id")}.map{|_,f|f["finding_id"]}
  Array(d["finding_ids"]).each do |id|
    errors << "#{path}: Finding does not belong to Review Run #{id}" unless relevant_findings.include?(id)
    errors << "#{path}: Passed with non-closed Finding #{id}" if d["review_status"]=="Passed"&&finding_map[id]&.dig("lifecycle_history",-1,"to")!="Closed"
  end
  errors << "#{path}: Review Result omits relevant Findings" unless (relevant_findings-Array(d["finding_ids"])).empty?

  if run&.dig("artifact_class")=="review_run"
    errors << "#{path}: direct Review Result requires Completed Review Run" unless run["review_phase"]=="Completed"
    errors << "#{path}: direct Passed Review Result requires Re-Verification for Findings" if d["review_status"]=="Passed"&&!relevant_findings.empty?
  end

  run_timestamp = if run&.dig("artifact_class")=="review_run"
    run.dig("phase_history",-1,"timestamp")
  else
    run&.dig("timestamp")
  end
  if timestamp?(d["timestamp"])&&timestamp?(run_timestamp)
    errors << "#{path}: Review Result timestamp must be after Run" unless Time.iso8601(d["timestamp"])>Time.iso8601(run_timestamp)
  end

  evidence_resolves=->(ref){run_map[ref]||finding_map[ref]||correction_map[ref]||result_map[ref]||File.exist?(File.join(ROOT,ref.to_s))}
  errors << "#{path}: dangling Approval Evidence #{d['approval_evidence']}" unless evidence_resolves.call(d["approval_evidence"])
  Array(d["verification_evidence"]).each{|ref|errors << "#{path}: dangling verification evidence #{ref}" unless evidence_resolves.call(ref)}
  errors << "#{path}: Verification Evidence does not reference Result Run" unless Array(d["verification_evidence"]).include?(d["review_run_id"])
end
releases.each do |path,d|
  errors << "#{path}: invalid release_stage" unless RELEASE_STAGES.include?(d["release_stage"])
  errors << "#{path}: invalid approval_decision" unless APPROVAL_DECISIONS.include?(d["approval_decision"])
  res=result_map[d["review_result_id"]]; errors << "#{path}: Release without Review Result" unless res
  errors << "#{path}: Release baseline differs from Review Result" if res&&d["baseline"]!=res["baseline"]
  errors << "#{path}: Release Run differs from Review Result" if res&&d["review_run_id"]!=res["review_run_id"]
  errors << "#{path}: Release review_result value differs" if res&&d["review_result"]!=res["review_status"]
  errors << "#{path}: authorized_by must be Project Lead" unless d["authorized_by"]=="Project Lead"
  release_run=run_map[d["review_run_id"]]
  original=release_run&.dig("artifact_class")=="reverification" ? run_map[release_run["original_review_run_id"]] : release_run
  required=["Project Lead"]+(original&.dig("review_level")=="Architecture Review" ? ["Architecture Board"] : [])
  errors << "#{path}: wrong required approval roles" unless Array(d["required_approval_roles"]).sort==required.sort
  Array(d["required_approval_roles"]).each{|role|errors << "#{path}: invalid required approval role #{role.inspect}" unless ROLE_DOMAIN.include?(role)}
  Array(d["actual_approval_roles"]).each{|role|errors << "#{path}: invalid actual approval role #{role.inspect}" unless ROLE_DOMAIN.include?(role)}
  errors << "#{path}: actual approval role was not required" unless (Array(d["actual_approval_roles"])-Array(d["required_approval_roles"])).empty?
  if ["Release Candidate","Released"].include?(d["release_stage"])
    errors << "#{path}: successful release decision must be Approved" unless d["approval_decision"]=="Approved"
    errors << "#{path}: Release Review Result not Passed" unless res&.dig("review_status")=="Passed"
    errors << "#{path}: Release with open blocker" unless Array(d["open_release_blocking_findings"]).empty?
    errors << "#{path}: Release missing required approval role" unless (required-Array(d["actual_approval_roles"])).empty?
    d["baseline"].each do |b|
      meta=artifact_meta(b["commit"],b["artifact_id"])
      errors << "#{path}: Release Candidate requires Canonical document revision" unless meta&&meta["status"]=="Canonical"
    end
  end
  Array(d["evidence_references"]).each do |ref|
    errors << "#{path}: PB-999 used as Gate Evidence" if ref.to_s.include?("PB-999")
    errors << "#{path}: dangling Evidence Reference #{ref}" unless run_map[ref]||result_map[ref]||finding_map[ref]||correction_map[ref]
  end
end
# The retained WP-002 assertion is exact without imposing repository-wide cardinality.
expected={"RVR-000001"=>"review_run","FND-000001"=>"finding","COR-000001"=>"correction","RVR-000002"=>"reverification","RES-000001"=>"review_result","REL-000001"=>"release"}
expected.each{|id,klass|field=IDS[klass][0]; matches=Array(by_class[klass]).count{|_,d|d[field]==id}; errors << "retained WP-002 chain requires exactly one #{id}" unless matches==1}
pb999=File.join(ROOT,"project-bible/governance/PB-999_Editorial_Backlog.md")
if File.exist?(pb999)
  fm=File.read(pb999)[/\A---\n(.*?)\n---/m,1]; meta=Psych.safe_load(fm,permitted_classes:[Date],aliases:false)
  errors << "PB-999 claims Gate Authority" unless meta["source_of_truth"]==false && meta["status"]!="Canonical"
end
if errors.empty?
  puts "WP-002 evidence validation passed (#{records.length} records, #{runs.length} runs, #{findings.length} findings)."
else
  warn errors.join("\n"); warn "WP-002 evidence validation failed with #{errors.length} error(s)."; exit 1
end
