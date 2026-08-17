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
cases={
  "duplicate Review Run ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/RVR-000001.yml"),File.join(r,"project-bible/evidence/review-release/duplicate.yml"))},
  "duplicate Finding ID"=>->(r){FileUtils.cp(File.join(r,"project-bible/evidence/review-release/FND-000001.yml"),File.join(r,"project-bible/evidence/review-release/duplicate.yml"))},
  "Finding without Review Run"=>->(r){edit(r,"FND-000001.yml"){|d|d["origin_review_run_id"]="RVR-999999"}},
  "Correction without Finding"=>->(r){edit(r,"COR-000001.yml"){|d|d["finding_id"]="FND-999999"}},
  "Correction without Implementation Commit"=>->(r){edit(r,"COR-000001.yml"){|d|d.delete("implementation_commit")}},
  "Re-Verification without Finding"=>->(r){edit(r,"RVR-000002.yml"){|d|d["finding_ids"]=["FND-999999"]}},
  "Passed on wrong baseline"=>->(r){edit(r,"RES-000001.yml"){|d|d["baseline"][0]["version"]="9.9.9"}},
  "Release without Review Result"=>->(r){edit(r,"REL-000001.yml"){|d|d.delete("review_result_id")}},
  "Release with open blocker"=>->(r){edit(r,"REL-000001.yml"){|d|d["open_release_blocking_findings"]=["FND-000001"]}},
  "Release without required role"=>->(r){edit(r,"REL-000001.yml"){|d|d["actual_approval_roles"]=["Project Lead"]}},
  "PB-999 as Gate Evidence"=>->(r){edit(r,"REL-000001.yml"){|d|d["evidence_references"]=["PB-999"]}},
  "changed baseline inherits Passed"=>->(r){edit(r,"RVR-000002.yml"){|d|d["baseline"][0]["commit"]="a"*40}},
  "invalid Finding lifecycle"=>->(r){edit(r,"FND-000001.yml"){|d|d["lifecycle_history"][1]["to"]="Resolved"}},
  "invalid Finding transition"=>->(r){edit(r,"FND-000001.yml"){|d|d["lifecycle_history"][1]["from"]="Closed"}},
  "evidence sets foreign state"=>->(r){edit(r,"COR-000001.yml"){|d|d["ad_status"]="Accepted"}}
}
failed=[]
cases.each do |name,mutation|
  Dir.mktmpdir("wp002-") do |tmp|
    FileUtils.mkdir_p(File.join(tmp,"project-bible/evidence")); FileUtils.mkdir_p(File.join(tmp,"project-bible/governance"))
    FileUtils.cp_r(File.join(ROOT,"project-bible/evidence/review-release"),File.join(tmp,"project-bible/evidence"))
    FileUtils.cp(File.join(ROOT,"project-bible/governance/PB-999_Editorial_Backlog.md"),File.join(tmp,"project-bible/governance"))
    mutation.call(tmp)
    failed << name if system("ruby",VALIDATOR,tmp,out:File::NULL,err:File::NULL)
  end
end
abort("Mutation tests unexpectedly passed: #{failed.join(', ')}") unless failed.empty?
puts "WP-002 mutation tests passed: #{cases.length}/#{cases.length} invalid mutations rejected."
