#!/usr/bin/env ruby
require "date"
require "psych"
ROOT = File.expand_path(ARGV[0] || "..", __dir__)
DIR = File.join(ROOT, "project-bible/evidence/review-release")
CLASSES = %w[review_run finding correction reverification review_result release].freeze
LIFECYCLE = [
  [nil,"Recorded"], ["Recorded","Correction Required"],
  ["Correction Required","Awaiting Verification"],
  ["Awaiting Verification","Correction Required"],
  ["Awaiting Verification","Closed"], ["Closed","Reopened"],
  ["Reopened","Correction Required"]
].freeze
FORBIDDEN = %w[status ad_status work_package_status].freeze
errors=[]
def present?(v); !v.nil? && (!v.respond_to?(:empty?) || !v.empty?); end
def baseline?(b)
  b.is_a?(Array) && !b.empty? && b.all? { |x| x.is_a?(Hash) &&
    %w[artifact_id version commit included_scope excluded_scope].all? { |k| present?(x[k]) } &&
    x["version"].to_s.match?(/\A\d+\.\d+\.\d+\z/) && x["commit"].to_s.match?(/\A[0-9a-f]{40}\z/) }
end
def same_baseline?(a,b); a == b; end
records=[]
Dir.glob(File.join(DIR,"*.yml")).sort.each do |path|
  begin
    d=Psych.safe_load_file(path, permitted_classes:[Date], aliases:false)
    unless d.is_a?(Hash); errors << "#{path}: record must be object"; next; end
    records << [path,d]
  rescue Psych::Exception => e; errors << "#{path}: invalid YAML #{e.message.lines.first.strip}"; end
end
errors << "no controlled evidence records" if records.empty?
records.each do |path,d|
  errors << "#{path}: invalid artifact_class #{d['artifact_class'].inspect}" unless CLASSES.include?(d["artifact_class"])
  errors << "#{path}: invalid evidence version" unless d["version"].to_s.match?(/\A\d+\.\d+\.\d+\z/)
  bad=FORBIDDEN & d.keys; errors << "#{path}: evidence sets foreign state #{bad.join(',')}" unless bad.empty?
  errors << "#{path}: incomplete baseline" if d.key?("baseline") && !baseline?(d["baseline"])
end
by_class=records.group_by{|_,d|d["artifact_class"]}
runs=Array(by_class["review_run"])+Array(by_class["reverification"])
run_ids=runs.map{|_,d|d["review_run_id"]}; run_ids.tally.each{|id,n|errors << "duplicate Review Run ID #{id}" if present?(id)&&n>1}
errors << "invalid Review Run ID" if run_ids.any?{|id|!id.to_s.match?(/\ARVR-\d{6}\z/)}
findings=Array(by_class["finding"]); fids=findings.map{|_,d|d["finding_id"]}; fids.tally.each{|id,n|errors << "duplicate Finding ID #{id}" if present?(id)&&n>1}
errors << "invalid Finding ID" if fids.any?{|id|!id.to_s.match?(/\AFND-\d{6}\z/)}
run_map=runs.to_h{|_,d|[d["review_run_id"],d]}; finding_map=findings.to_h{|_,d|[d["finding_id"],d]}
findings.each do |path,d|
  errors << "#{path}: Finding without Review Run" unless run_map[d["origin_review_run_id"]]
  hist=d["lifecycle_history"]
  if !hist.is_a?(Array)||hist.empty?; errors << "#{path}: lifecycle history missing"; next; end
  hist.each do |e|
    errors << "#{path}: invalid Finding lifecycle value" unless %w[Recorded Correction\ Required Awaiting\ Verification Closed Reopened].include?(e["to"])
    errors << "#{path}: invalid Finding transition #{e['from'].inspect}->#{e['to'].inspect}" unless LIFECYCLE.include?([e["from"],e["to"]])
    errors << "#{path}: lifecycle event incomplete" unless %w[to role timestamp evidence].all?{|k|present?(e[k])}
  end
end
corrections=Array(by_class["correction"])
corrections.each do |path,d|
  errors << "#{path}: Correction without Finding" unless finding_map[d["finding_id"]]
  errors << "#{path}: Correction without Implementation Commit" unless d["implementation_commit"].to_s.match?(/\A[0-9a-f]{40}\z/)
  errors << "#{path}: Correction missing changed_files" unless d["changed_files"].is_a?(Array)&&!d["changed_files"].empty?
end
Array(by_class["reverification"]).each do |path,d|
  errors << "#{path}: Re-Verification without original Review Run" unless run_map[d["original_review_run_id"]]
  Array(d["finding_ids"]).each{|id|errors << "#{path}: Re-Verification without Finding #{id}" unless finding_map[id]}
  errors << "#{path}: Re-Verification missing Finding" unless d["finding_ids"].is_a?(Array)&&!d["finding_ids"].empty?
end
results=Array(by_class["review_result"]); result_map={}
results.each do |path,d|
  result_map[d["review_result_id"]]=d
  run=run_map[d["review_run_id"]]; errors << "#{path}: Review Result without Review Run" unless run
  errors << "#{path}: Passed on wrong baseline" if run && !same_baseline?(d["baseline"],run["baseline"])
  if d["review_status"]=="Passed"
    Array(d["finding_ids"]).each{|id| errors << "#{path}: Passed with non-closed Finding #{id}" unless finding_map[id]&.dig("lifecycle_history")&.last&.dig("to")=="Closed"}
    errors << "#{path}: Passed missing verification evidence" unless present?(d["verification_evidence"])
  end
end
Array(by_class["release"]).each do |path,d|
  res=result_map[d["review_result_id"]]; errors << "#{path}: Release without Review Result" unless res
  errors << "#{path}: Release baseline differs from Review Result" if res&&!same_baseline?(d["baseline"],res["baseline"])
  if d["approval_decision"]=="Approved"
    errors << "#{path}: Release with open blocker" unless Array(d["open_release_blocking_findings"]).empty?
    missing=Array(d["required_approval_roles"])-Array(d["actual_approval_roles"]); errors << "#{path}: Release missing required approval role #{missing.join(',')}" unless missing.empty?
    errors << "#{path}: Release Review Result not Passed" unless res&&res["review_status"]=="Passed"
  end
  Array(d["evidence_references"]).each{|ref|errors << "#{path}: PB-999 used as Gate Evidence" if ref.to_s.include?("PB-999")}
end
pb999=File.join(ROOT,"project-bible/governance/PB-999_Editorial_Backlog.md")
if File.exist?(pb999)
  fm=File.read(pb999)[/\A---\n(.*?)\n---/m,1]; meta=Psych.safe_load(fm, permitted_classes:[Date], aliases:false)
  errors << "PB-999 claims Gate Authority" unless meta["source_of_truth"]==false && meta["status"]!="Canonical"
end
if errors.empty?; puts "WP-002 evidence validation passed (#{records.length} records, #{run_ids.length} runs, #{fids.length} findings)."; else warn errors.join("\n"); warn "WP-002 evidence validation failed with #{errors.length} error(s)."; exit 1; end
