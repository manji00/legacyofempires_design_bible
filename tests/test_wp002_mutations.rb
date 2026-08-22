#!/usr/bin/env ruby
require "fileutils"
require "tmpdir"
require "psych"
ROOT=File.expand_path("..",__dir__)
VALIDATOR=File.join(ROOT,"scripts/validate_wp002.rb")
def edit(root,file)
  path=File.join(root,"project-bible/evidence/review-release",file)
  data=Psych.safe_load_file(path,aliases:false); yield data
  File.write(path,Psych.dump(data))
end

def add_direct_result(root, review_overrides: {}, result_overrides: {})
  baseline=Psych.safe_load_file(File.join(root,"project-bible/evidence/review-release/RVR-000002.yml"),aliases:false)["baseline"]
  run={
    "artifact_class"=>"review_run", "version"=>"1.0.0", "review_run_id"=>"RVR-900001",
    "baseline"=>baseline, "change_class"=>"Direct-result validator test",
    "review_level"=>"Architecture Review", "required_approval_roles"=>["Architecture Board"],
    "review_phase"=>"Completed", "phase_history"=>[
      {"from"=>"Planned", "to"=>"In Review", "role"=>"Governance Reviewer", "timestamp"=>"2026-08-18T10:00:00Z", "evidence"=>"WP-002"},
      {"from"=>"In Review", "to"=>"Decision", "role"=>"Governance Reviewer", "timestamp"=>"2026-08-18T10:10:00Z", "evidence"=>"RVR-900001"},
      {"from"=>"Decision", "to"=>"Completed", "role"=>"Governance Reviewer", "timestamp"=>"2026-08-18T10:20:00Z", "evidence"=>"RES-900001"}
    ], "finding_ids"=>[], "reverification_review_run_ids"=>[], "traceability"=>["AD-017","WP-002"]
  }.merge(review_overrides)
  result={
    "artifact_class"=>"review_result", "version"=>"1.0.0", "review_result_id"=>"RES-900001",
    "review_run_id"=>"RVR-900001", "baseline"=>baseline, "review_status"=>"Passed",
    "responsible_role"=>"Architecture Board", "approval_evidence"=>"RVR-900001",
    "approval_decision"=>"Approved", "timestamp"=>"2026-08-18T10:21:00Z",
    "finding_ids"=>[], "verification_evidence"=>["RVR-900001"]
  }.merge(result_overrides)
  File.write(File.join(root,"project-bible/evidence/review-release/RVR-900001.yml"),Psych.dump(run))
  File.write(File.join(root,"project-bible/evidence/review-release/RES-900001.yml"),Psych.dump(result))
end

def fixture
  Dir.mktmpdir("wp002-") do |tmp|
    FileUtils.mkdir_p(File.join(tmp,"project-bible/evidence")); FileUtils.mkdir_p(File.join(tmp,"project-bible/governance")); FileUtils.mkdir_p(File.join(tmp,"scripts"))
    FileUtils.cp_r(File.join(ROOT,"project-bible/evidence/review-release"),File.join(tmp,"project-bible/evidence"))
    FileUtils.cp(File.join(ROOT,"project-bible/governance/PB-999_Editorial_Backlog.md"),File.join(tmp,"project-bible/governance"))
    FileUtils.cp(VALIDATOR,File.join(tmp,"scripts"))
    yield tmp
  end
end
cases={
  "duplicate Review Run ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/RVR-000001.yml"),File.join(r,"project-bible/evidence/review-release/duplicate.yml"))},
  "duplicate Finding ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/FND-000001.yml"),File.join(r,"project-bible/evidence/review-release/duplicate.yml"))},
  "Finding without Review Run"=>->(r){edit(r,"FND-000001.yml"){|d|d["origin_review_run_id"]="RVR-999999"}},
  "Correction without Finding"=>->(r){edit(r,"COR-000001.yml"){|d|d["finding_id"]="FND-999999"}},
  "Correction without Implementation Commit"=>->(r){edit(r,"COR-000001.yml"){|d|d.delete("implementation_commit")}},
  "Re-Verification without Finding"=>->(r){edit(r,"RVR-000002.yml"){|d|d["finding_ids"]=["FND-999999"]}},
  "Passed on wrong baseline"=>->(r){edit(r,"RES-000001.yml"){|d|d["baseline"][0]["version"]="9.9.9"}},
  "Release without Review Result"=>->(r){edit(r,"REL-000001.yml"){|d|d.delete("review_result_id")}},
  "Release with open blocker"=>->(r){edit(r,"REL-000001.yml"){|d|d["open_release_blocking_findings"]=["FND-000001"];d["release_stage"]="Release Candidate";d["approval_decision"]="Approved"}},
  "Release without required role"=>->(r){edit(r,"REL-000001.yml"){|d|d["actual_approval_roles"]=["Project Lead"];d["release_stage"]="Release Candidate";d["approval_decision"]="Approved"}},
  "PB-999 as Gate Evidence"=>->(r){edit(r,"REL-000001.yml"){|d|d["evidence_references"]=["PB-999"]}},
  "changed baseline inherits Passed"=>->(r){edit(r,"RVR-000002.yml"){|d|d["baseline"][0]["commit"]="a"*40}},
  "invalid Finding lifecycle"=>->(r){edit(r,"FND-000001.yml"){|d|d["lifecycle_history"][1]["to"]="Resolved"}},
  "invalid Finding transition"=>->(r){edit(r,"FND-000001.yml"){|d|d["lifecycle_history"][1]["from"]="Closed"}},
  "evidence sets foreign state"=>->(r){edit(r,"COR-000001.yml"){|d|d["ad_status"]="Accepted"}},
  "nonexistent Commit"=>->(r){edit(r,"COR-000001.yml"){|d|d["implementation_commit"]="0"*40}},
  "review_phase differs from History endpoint"=>->(r){edit(r,"RVR-000001.yml"){|d|d["review_phase"]="Completed"}},
  "interrupted Finding History"=>->(r){edit(r,"FND-000001.yml"){|d|d["lifecycle_history"][2]["from"]="Recorded"}},
  "non-monotone timestamps"=>->(r){edit(r,"FND-000001.yml"){|d|d["lifecycle_history"][2]["timestamp"]="2026-08-17T09:00:00Z"}},
  "Closed without successful Re-Verification"=>->(r){edit(r,"RVR-000002.yml"){|d|d["result"]="Failed"}},
  "invalid review_status"=>->(r){edit(r,"RES-000001.yml"){|d|d["review_status"]="Successful"}},
  "invalid release_stage"=>->(r){edit(r,"REL-000001.yml"){|d|d["release_stage"]="Test Candidate"}},
  "wrong Approval Role"=>->(r){edit(r,"RES-000001.yml"){|d|d["responsible_role"]="Document Owner"}},
  "Release Candidate for ineligible revision"=>->(r){edit(r,"REL-000001.yml"){|d|d["release_stage"]="Release Candidate";d["approval_decision"]="Approved"}},
  "authorized_by wrong role"=>->(r){edit(r,"REL-000001.yml"){|d|d["authorized_by"]="Architecture Board"}},
  "dangling Evidence Reference"=>->(r){edit(r,"REL-000001.yml"){|d|d["evidence_references"]=["RVR-999999"]}},
  "duplicate Correction ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/COR-000001.yml"),File.join(r,"project-bible/evidence/review-release/COR-copy.yml"))},
  "duplicate Review Result ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/RES-000001.yml"),File.join(r,"project-bible/evidence/review-release/RES-copy.yml"))},
  "duplicate Release ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/REL-000001.yml"),File.join(r,"project-bible/evidence/review-release/REL-copy.yml"))},
  "class-specific forbidden state"=>->(r){edit(r,"COR-000001.yml"){|d|d["review_phase"]="Completed"}},
  "invalid Release approval decision"=>->(r){edit(r,"REL-000001.yml"){|d|d["approval_decision"]="Banana"}},
  "invalid Review Result approval decision"=>->(r){edit(r,"RES-000001.yml"){|d|d["approval_decision"]="Banana"}},
  "wrong Re-Verification role"=>->(r){edit(r,"RVR-000002.yml"){|d|d["responsible_role"]="Document Owner"}},
  "invalid Correction role"=>->(r){edit(r,"COR-000001.yml"){|d|d["responsible_role"]="Banana"}},
  "invalid actual approval role"=>->(r){edit(r,"REL-000001.yml"){|d|d["actual_approval_roles"]=["Banana"]}}
}
failed=[]
cases.each do |name,mutation|
  fixture do |tmp|
    mutation.call(tmp)
    failed << name if system("ruby",VALIDATOR,tmp,out:File::NULL,err:File::NULL)
  end
end
abort("Mutation tests unexpectedly passed: #{failed.join(', ')}") unless failed.empty?

direct_cases={
  "direct Passed result with no Findings"=>[true, ->(r){add_direct_result(r)}],
  "direct Passed result with open Finding"=>[false, ->(r){
    finding=Psych.safe_load_file(File.join(r,"project-bible/evidence/review-release/FND-000001.yml"),aliases:false)
    finding["finding_id"]="FND-900001"; finding["origin_review_run_id"]="RVR-900001"; finding["correction_ids"]=[]; finding["verification_review_run_ids"]=[]
    finding["lifecycle_history"]=[{"from"=>nil,"to"=>"Recorded","role"=>"Governance Reviewer","timestamp"=>"2026-08-18T10:05:00Z","evidence"=>"RVR-900001"}]
    File.write(File.join(r,"project-bible/evidence/review-release/FND-900001.yml"),Psych.dump(finding))
    add_direct_result(r,review_overrides:{"finding_ids"=>["FND-900001"]},result_overrides:{"finding_ids"=>["FND-900001"]})
  }],
  "direct result with different baseline"=>[false, ->(r){add_direct_result(r,result_overrides:{"baseline"=>[]})}],
  "direct Architecture result with wrong Approval Role"=>[false, ->(r){add_direct_result(r,result_overrides:{"responsible_role"=>"Document Owner"})}],
  "direct Passed plus Not Approved"=>[false, ->(r){add_direct_result(r,result_overrides:{"approval_decision"=>"Not Approved"})}],
  "direct Failed plus Approved"=>[false, ->(r){add_direct_result(r,result_overrides:{"review_status"=>"Rejected"})}],
  "result references unknown Run ID"=>[false, ->(r){add_direct_result(r,result_overrides:{"review_run_id"=>"RVR-999999"})}],
  "retained Re-Verification path"=>[true, ->(_r){}]
}
direct_failures=[]
direct_cases.each do |name,(should_pass,setup)|
  fixture do |tmp|
    setup.call(tmp)
    passed=system("ruby",VALIDATOR,tmp,out:File::NULL,err:File::NULL)
    direct_failures << name unless passed==should_pass
  end
end
abort("Direct-result tests failed: #{direct_failures.join(', ')}") unless direct_failures.empty?
puts "WP-002 mutation tests passed: #{cases.length}/#{cases.length} invalid mutations rejected; #{direct_cases.length}/#{direct_cases.length} review-result paths verified (#{cases.length+direct_cases.length} total)."
