#!/usr/bin/env ruby
require 'fileutils'
require 'tmpdir'
require 'psych'
ROOT=File.expand_path('..',__dir__)
VALIDATOR=File.join(ROOT,'scripts/validate_governance_states.rb')

def edit_yaml(root,id)
  path=File.join(root,"project-bible/evidence/work-packages/#{id}.yml")
  data=Psych.safe_load_file(path,aliases:false); yield data; File.write(path,Psych.dump(data,line_width:-1))
end

def edit_file(root,relative)
  path=File.join(root,relative); text=File.read(path); changed=yield text
  raise "mutation made no change: #{relative}" if changed==text
  File.write(path,changed)
end

def transition(previous,new,time='2026-08-17T12:00:00Z',role='Governance Process')
  {'previous'=>previous,'new'=>new,'timestamp'=>time,'responsible_role'=>role,'evidence_references'=>['project-bible/audits/GA-001_Resolution_Plan.md']}
end

cases={
  'invalid Document Status'=>->(r){edit_file(r,'project-bible/governance/PB-004_Naming_And_Terminology.md'){|s|s.sub(/^status: Review$/,'status: Banana')}},
  'invalid Document transition'=>->(r){edit_file(r,'project-bible/governance/PB-004_Naming_And_Terminology.md'){|s|s.sub(/^status: Review$/,'status: Implemented')}},
  'Canonical without gate'=>->(r){edit_file(r,'project-bible/governance/PB-004_Naming_And_Terminology.md'){|s|s.sub(/^status: Review$/,'status: Canonical')}},
  'invalid AD Status'=>->(r){edit_file(r,'project-bible/governance/PB-998_Architecture_Decisions.md'){|s|s.sub(/(## AD-018.*?\*\*Status\*\*\s*\n\s*)Accepted/m,'\\1Banana')}},
  'AD Implementation before Accepted'=>->(r){edit_file(r,'project-bible/governance/PB-998_Architecture_Decisions.md'){|s|s.sub("# Versionshistorie","## AD-019 – Mutation\n\n**Status**\n\nImplemented\n\n# Versionshistorie")}},
  'AD Verified before Implemented'=>->(r){edit_file(r,'project-bible/governance/PB-998_Architecture_Decisions.md'){|s|s.sub("# Versionshistorie","## AD-019 – Mutation\n\n**Status**\n\nVerified\n\n# Versionshistorie")}},
  'invalid Work-Package Status'=>->(r){edit_yaml(r,'WP-004'){|d|d['work_package_status']='Banana'}},
  'duplicate Work-Package carrier'=>->(r){FileUtils.cp(File.join(r,'project-bible/evidence/work-packages/WP-001.yml'),File.join(r,'project-bible/evidence/work-packages/copy.yml'))},
  'carrier filename ID mismatch'=>->(r){FileUtils.mv(File.join(r,'project-bible/evidence/work-packages/WP-004.yml'),File.join(r,'project-bible/evidence/work-packages/WP-099.yml'))},
  'interrupted Work-Package history'=>->(r){edit_yaml(r,'WP-003'){|d|d['transition_history']=[transition('Planned','Ready'),transition('Planned','Cancelled','2026-08-17T13:00:00Z')]}},
  'non-monotone Work-Package history'=>->(r){edit_yaml(r,'WP-003'){|d|d['transition_history']=[transition('Planned','Ready','2026-08-17T13:00:00Z'),transition('Ready','In Progress','2026-08-17T12:00:00Z')]}},
  'history endpoint differs from current'=>->(r){edit_yaml(r,'WP-004'){|d|d['historical_completeness']={'status'=>'complete','missing_transition_details'=>[]};d['transition_history']=[transition('Planned','Ready')]}},
  'Ready without Accepted ADs'=>->(r){edit_yaml(r,'WP-004'){|d|d['work_package_status']='Ready';d['architecture_decisions']=['AD-999'];d['gate_evidence']['ready']=['project-bible/governance/PB-998_Architecture_Decisions.md']}},
  'Verification without Implementation Evidence'=>->(r){edit_yaml(r,'WP-003'){|d|d['gate_evidence']['verification']=[]}},
  'Closed without Verification Evidence'=>->(r){edit_yaml(r,'WP-001'){|d|d['gate_evidence']['closed']['verification']=[]}},
  'Closed without Closure Evidence'=>->(r){edit_yaml(r,'WP-001'){|d|d['closure_evidence']=[]}},
  'Closed with unresolved Closure Report'=>->(r){edit_yaml(r,'WP-001'){|d|d['closure_evidence']=['project-bible/audits/NO_Closure_Report.md']}},
  'invented complete History without Evidence'=>->(r){edit_yaml(r,'WP-004'){|d|d['work_package_status']='Ready';d['historical_completeness']={'status'=>'complete','missing_transition_details'=>[]};d['transition_history']=[transition('Planned','Ready')];d['architecture_decisions']=['AD-018'];d['gate_evidence']['ready']=['project-bible/governance/PB-998_Architecture_Decisions.md']}},
  'unknown State-Keeper role'=>->(r){edit_yaml(r,'WP-003'){|d|d['transition_history']=[transition('Planned','Ready','2026-08-17T12:00:00Z','Banana')]}},
  'gate sets foreign State Dimension'=>->(r){edit_yaml(r,'WP-003'){|d|d['gate_evidence']['release_stage']='Released'}}
}
failed=[]
cases.each do |name,mutation|
  Dir.mktmpdir('gov-state-') do |tmp|
    repo=File.join(tmp,'repo')
    system('cp','--reflink=auto','-a',ROOT,repo) or abort('copy failed')
    mutation.call(repo)
    failed << name if system('ruby',VALIDATOR,repo,out:File::NULL,err:File::NULL)
  end
end
abort("Mutation tests unexpectedly passed: #{failed.join(', ')}") unless failed.empty?
puts "Governance state mutation tests passed: #{cases.length}/#{cases.length} invalid mutations rejected."
