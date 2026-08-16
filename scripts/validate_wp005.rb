#!/usr/bin/env ruby
# Focused metadata validator for GA-001-RES / WP-005 only.

require "date"
require "psych"

ROOT = File.expand_path("..", __dir__)
FILES = Dir.glob(File.join(ROOT, "**", "*.md"))
TYPES = %w[canonical archived planned external historical_evidence].freeze
errors = []

def frontmatter(path)
  text = File.read(path)
  match = text.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  return nil unless match
  Psych.safe_load(match[1], permitted_classes: [Date], aliases: false)
rescue Psych::Exception => e
  raise "#{path}: invalid YAML: #{e.message}"
end

documents = FILES.filter_map { |path| data = frontmatter(path); [path, data] if data }
by_id = Hash.new { |hash, key| hash[key] = [] }
documents.each { |path, data| by_id[data["document_id"]] << [path, data] if data["document_id"] }
by_id.each { |id, matches| errors << "duplicate document_id #{id}" unless matches.one? }

documents.each do |path, data|
  version = data["version"].to_s
  errors << "#{path}: invalid semantic version #{version}" unless version.match?(/\A\d+\.\d+\.\d+\z/)
end

register_path = File.join(ROOT, "project-bible/governance/PB-998_Architecture_Decisions.md")
register = File.read(register_path)
decision_status = {}
register.scan(/^## (AD-\d{3}) .*?\n\n\*\*Status\*\*\n\n([^\n]+)/m) { |id, status| decision_status[id] = status.strip }
binding_statuses = %w[Accepted Implemented Verified].freeze

affected = %w[PB-000 PB-003 PB-004 PB-997 PB-998 CTX-000]
expected = {
  "PB-000" => %w[AD-009 AD-010 AD-011 AD-012 AD-013 AD-014],
  "PB-003" => %w[AD-004 AD-010],
  "PB-004" => %w[AD-001 AD-002 AD-003 AD-004 AD-006 AD-008 AD-010],
  "PB-997" => %w[AD-005 AD-010 AD-012 AD-013],
  "PB-998" => %w[AD-005 AD-007 AD-010 AD-014],
  "CTX-000" => %w[AD-009 AD-010 AD-013 AD-014 AD-015]
}
affected.each do |id|
  item = by_id[id]&.first
  next errors << "missing affected document #{id}" unless item
  actual = item[1]["architecture_decisions"]
  errors << "#{id}: architecture_decisions mismatch" unless actual == expected.fetch(id)
  Array(actual).each do |decision|
    errors << "#{id}: invalid decision ID #{decision}" unless decision.match?(/\AAD-\d{3}\z/)
    errors << "#{id}: unresolved or non-binding decision #{decision}" unless binding_statuses.include?(decision_status[decision])
  end
end

def validate_reference(ref, relationship, by_id, errors)
  return errors << "#{relationship}: reference must be an object" unless ref.is_a?(Hash)
  type = ref["reference_type"]
  target = ref["target"]
  errors << "#{relationship}: unknown reference_type #{type.inspect}" unless TYPES.include?(type)
  matches = by_id[target] || []
  case type
  when "canonical"
    errors << "#{relationship}: canonical target #{target} is not uniquely canonical" unless matches.one? && matches.first[1]["status"] == "Canonical"
  when "archived"
    valid = matches.one? && (%w[Archived Superseded].include?(matches.first[1]["status"]) || matches.first[1]["superseded_by"])
    errors << "#{relationship}: archived target #{target} lacks archived/superseded state" unless valid
  when "planned"
    errors << "#{relationship}: planned target #{target} already resolves" unless matches.empty?
    errors << "#{relationship}: planned reference cannot be a dependency" if relationship == "depends_on"
  when "external"
    errors << "#{relationship}: external reference lacks locator" if ref["locator"].to_s.strip.empty?
  when "historical_evidence"
    errors << "#{relationship}: unresolved historical evidence lacks target" if matches.empty? && target.to_s.strip.empty?
    errors << "#{relationship}: unresolved historical evidence lacks provenance" if matches.empty? && ref["provenance"].to_s.strip.empty?
  end
end

ctx_path, ctx = by_id.fetch("CTX-000").first
required = %w[document_id title version status category created updated owners audience source_of_truth canonical_sources architecture_decisions tags]
errors << "CTX-000: missing fields #{required - ctx.keys}" unless (required - ctx.keys).empty?
errors << "CTX-000: wrong category" unless ctx["category"] == "Derived Operational Continuity Artifact"
errors << "CTX-000: must not be a source of truth" unless ctx["source_of_truth"] == false
errors << "CTX-000: Canonical status is forbidden" if ctx["status"] == "Canonical"
%w[purpose canonical authority document_type review_status release_stage].each { |field| errors << "CTX-000: forbidden synonym #{field}" if ctx.key?(field) }
errors << "CTX-000: canonical_sources must not be empty" if Array(ctx["canonical_sources"]).empty?
Array(ctx["canonical_sources"]).each { |ref| validate_reference(ref, "canonical_sources", by_id, errors) }
errors << "CTX-000: duplicate canonical source" unless Array(ctx["canonical_sources"]).map { |ref| ref["target"] }.uniq.length == Array(ctx["canonical_sources"]).length

vision = by_id.fetch("PB-002").first[1]
%w[depends_on related_documents supersedes].each do |relationship|
  Array(vision[relationship]).each { |ref| validate_reference(ref, relationship, by_id, errors) }
end
pb000 = by_id.fetch("PB-000").first[1]
%w[depends_on related_documents].each do |relationship|
  Array(pb000[relationship]).each { |ref| validate_reference(ref, relationship, by_id, errors) }
end
handoff = File.read(ctx_path)
handoff.scan(/reference_type:\s*(\w+)\s*\n\s*target:\s*([^\s]+)/).each do |type, target|
  validate_reference({ "reference_type" => type, "target" => target }, "historical_plan", by_id, errors) if type == "planned"
end

review = by_id.fetch("PB-997").first[1]
overlap = Array(review["depends_on"]) & Array(review["related_documents"])
errors << "PB-997: duplicate depends_on/related_documents IDs #{overlap}" unless overlap.empty?

if errors.empty?
  puts "WP-005 metadata validation passed (#{documents.length} documents, #{decision_status.length} decisions)."
else
  warn errors.join("\n")
  exit 1
end
