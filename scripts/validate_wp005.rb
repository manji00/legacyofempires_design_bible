#!/usr/bin/env ruby
# Deterministic metadata validator for GA-001-RES / WP-005.
#
# This program intentionally does not infer applicable Architecture Decisions,
# authority, or relationship semantics from prose.  Those are manual review
# concerns; only the machine-readable contracts in AD-009/010/014/015 and the
# curated WP-005 migration sets are checked here.

require "date"
require "psych"

ROOT = File.expand_path("..", __dir__)
MARKDOWN_FILES = Dir.glob(File.join(ROOT, "**", "*.md")).sort.freeze
GOVERNANCE_FILES = Dir.glob(File.join(ROOT, "project-bible/governance", "PB-*.md")).sort.freeze
CTX_PATH = File.join(ROOT, "PROJECT_4X_CONTEXT_HANDOFF.md").freeze
REFERENCE_FIELDS = %w[
  depends_on related_documents supersedes superseded_by implements verified_by
  canonical_sources
].freeze
REFERENCE_TYPES = %w[canonical archived planned external historical_evidence].freeze
BINDING_AD_STATUSES = %w[Accepted Implemented Verified].freeze
DOCUMENT_STATUSES = %w[Idea Draft Review Accepted Canonical Implemented Superseded].freeze
CTX_REQUIRED_FIELDS = %w[
  document_id title version status category created updated owners audience
  source_of_truth canonical_sources architecture_decisions tags
].freeze
CTX_FORBIDDEN_FIELDS = %w[
  document_type canonical authority review_status review_phase ad_status
  work_package_status release_stage ctx_status lifecycle ctx_lifecycle
  ctx_version short_version version_short
].freeze

errors = []

def relative(path)
  path.delete_prefix("#{ROOT}/")
end

def parse_frontmatter(path, errors, required: false)
  text = File.read(path)
  match = text.match(/\A---[ \t]*\r?\n(.*?)\r?\n---[ \t]*\r?\n/m)
  unless match
    errors << "#{relative(path)}: required YAML frontmatter is missing" if required
    return nil
  end

  data = Psych.safe_load(match[1], permitted_classes: [Date], aliases: false)
  unless data.is_a?(Hash)
    errors << "#{relative(path)}: frontmatter must be a YAML object"
    return nil
  end
  data
rescue Psych::Exception => e
  errors << "#{relative(path)}: invalid YAML frontmatter: #{e.message.lines.first.strip}"
  nil
end

def non_empty_string?(value)
  value.is_a?(String) && !value.strip.empty?
end

def non_empty_string_list?(value)
  value.is_a?(Array) && !value.empty? && value.all? { |item| non_empty_string?(item) }
end

def iso_date?(value)
  string = value.is_a?(Date) ? value.iso8601 : value
  return false unless string.is_a?(String) && string.match?(/\A\d{4}-\d{2}-\d{2}\z/)
  Date.iso8601(string).iso8601 == string
rescue Date::Error
  false
end

def reference_target(entry)
  entry.is_a?(Hash) ? entry["target"] : entry
end

# PB-000 requires frontmatter for Project-Bible documents.  The derived CTX
# artifact has its own mandatory profile under AD-015.  Evidence/audit Markdown
# and arbitrary Markdown outside these classes are deliberately not broadened
# into this requirement.
required_frontmatter = (GOVERNANCE_FILES + [CTX_PATH]).uniq
documents = []
MARKDOWN_FILES.each do |path|
  data = parse_frontmatter(path, errors, required: required_frontmatter.include?(path))
  documents << [path, data] if data
end

by_id = Hash.new { |hash, key| hash[key] = [] }
documents.each do |path, data|
  id = data["document_id"]
  by_id[id] << [path, data] if non_empty_string?(id)
end
by_id.each do |id, matches|
  errors << "duplicate document_id #{id}: #{matches.map { |path, _| relative(path) }.join(', ')}" unless matches.one?
end

# Parse PB-998 as the sole AD register. Duplicate headings remain visible rather
# than being silently overwritten in a Hash.
register_path = File.join(ROOT, "project-bible/governance/PB-998_Architecture_Decisions.md")
register = File.read(register_path)
decision_entries = Hash.new { |hash, key| hash[key] = [] }
register.scan(/^## (AD-\d{3})\b.*?^\*\*Status\*\*[ \t]*$\r?\n(?:\r?\n)+([^\r\n]+)/m) do |id, status|
  decision_entries[id] << status.strip
end
decision_entries.each do |id, statuses|
  errors << "PB-998: decision #{id} is registered #{statuses.length} times" unless statuses.one?
end

# GENERIC STRUCTURAL VALIDATION — every architecture_decisions field currently
# present in repository Markdown, independent of the WP-005 affected set.
architecture_decision_references = 0
documents.each do |path, data|
  next unless data.key?("architecture_decisions")
  field = data["architecture_decisions"]
  unless field.is_a?(Array)
    errors << "#{relative(path)}: architecture_decisions must be a list"
    next
  end
  duplicates = field.group_by(&:itself).select { |_, values| values.length > 1 }.keys
  errors << "#{relative(path)}: duplicate architecture_decisions #{duplicates.inspect}" unless duplicates.empty?
  field.each do |decision|
    architecture_decision_references += 1
    unless decision.is_a?(String) && decision.match?(/\AAD-\d{3}\z/)
      errors << "#{relative(path)}: invalid Architecture Decision ID #{decision.inspect}"
      next
    end
    statuses = decision_entries[decision]
    unless statuses.one?
      errors << "#{relative(path)}: Architecture Decision #{decision} does not resolve exactly once in PB-998"
      next
    end
    unless BINDING_AD_STATUSES.include?(statuses.first)
      errors << "#{relative(path)}: Architecture Decision #{decision} has non-binding status #{statuses.first.inspect}"
    end
  end
end

def validate_reference(ref, relationship, source_path, by_id, errors)
  label = "#{relative(source_path)}: #{relationship}"
  unless ref.is_a?(Hash)
    errors << "#{label} reference must be an object"
    return
  end
  type = ref["reference_type"]
  target = ref["target"]
  unless REFERENCE_TYPES.include?(type)
    errors << "#{label} has unknown reference_type #{type.inspect}"
    return
  end
  matches = non_empty_string?(target) ? by_id[target] : []

  case type
  when "canonical"
    errors << "#{label} canonical target #{target.inspect} is not uniquely current and canonical" unless matches.one? && matches.first[1]["status"] == "Canonical"
  when "archived"
    valid = matches.one? && (%w[Archived Superseded].include?(matches.first[1]["status"]) || non_empty_string?(matches.first[1]["superseded_by"]))
    errors << "#{label} archived target #{target.inspect} is not uniquely historical/archived/superseded" unless valid
  when "planned"
    errors << "#{label} planned target must be a syntactically valid stable ID" unless non_empty_string?(target) && target.match?(/\A[A-Z][A-Z0-9]*(?:-[A-Z0-9]+)+\z/)
    errors << "#{label} planned target #{target.inspect} already resolves" unless matches.empty?
    errors << "#{label} planned reference cannot be an existing dependency" if relationship == "depends_on"
  when "external"
    errors << "#{label} external reference requires a non-empty locator" unless non_empty_string?(ref["locator"])
  when "historical_evidence"
    if matches.empty?
      errors << "#{label} unresolved historical evidence requires a stable historical target name" unless non_empty_string?(target)
      errors << "#{label} unresolved historical evidence requires provenance" unless non_empty_string?(ref["provenance"])
    end
  end
end

# GENERIC REFERENCE VALIDATION — validate every AD-014 reference object found in
# any established relationship field, not a hard-coded list of three documents.
reference_count = 0
documents.each do |path, data|
  REFERENCE_FIELDS.each do |relationship|
    next unless data.key?(relationship)
    value = data[relationship]
    entries = value.nil? ? [] : (value.is_a?(Array) ? value : [value])
    entries.each do |entry|
      next unless entry.is_a?(Hash) # Legacy strings remain supported where present.
      reference_count += 1
      validate_reference(entry, relationship, path, by_id, errors)
    end
  end

  # GOV-B-013's accepted direct fix is scoped to PB-997. Normalize both legacy
  # strings and AD-014 objects before enforcing its migration assertion.
  if data["document_id"] == "PB-997"
    depends_on = Array(data["depends_on"]).filter_map { |entry| reference_target(entry) }
    related = Array(data["related_documents"]).filter_map { |entry| reference_target(entry) }
    overlap = depends_on & related
    errors << "#{relative(path)}: duplicate depends_on/related_documents target IDs #{overlap.uniq.inspect}" unless overlap.empty?
  end
end

# AD-015 / AD-009 derived artifact profile and deterministic authority boundary.
ctx_matches = by_id["CTX-000"]
if ctx_matches.one?
  ctx_path, ctx = ctx_matches.first
  missing = CTX_REQUIRED_FIELDS - ctx.keys
  errors << "CTX-000: missing required fields #{missing.inspect}" unless missing.empty?
  errors << "CTX-000: document_id must use CTX-XXX" unless ctx["document_id"].is_a?(String) && ctx["document_id"].match?(/\ACTX-\d{3}\z/)
  # CTX-000 is the established identity of PROJECT_4X_CONTEXT_HANDOFF.md. Future
  # CTX artifacts must use the general PB-000 filename-prefix convention.
  established_path = ctx["document_id"] == "CTX-000" && File.expand_path(ctx_path) == CTX_PATH
  filename_match = File.basename(ctx_path).start_with?(ctx["document_id"].to_s)
  errors << "CTX-000: document identity does not match its established path or filename prefix" unless established_path || filename_match
  errors << "CTX-000: title must be a non-empty string" unless non_empty_string?(ctx["title"])
  errors << "CTX-000: version must be MAJOR.MINOR.PATCH" unless ctx["version"].is_a?(String) && ctx["version"].match?(/\A\d+\.\d+\.\d+\z/)
  errors << "CTX-000: invalid document status #{ctx['status'].inspect}" unless DOCUMENT_STATUSES.include?(ctx["status"])
  errors << "CTX-000: status Canonical is forbidden" if ctx["status"] == "Canonical"
  errors << "CTX-000: category must be Derived Operational Continuity Artifact" unless ctx["category"] == "Derived Operational Continuity Artifact"
  errors << "CTX-000: created must be an ISO YYYY-MM-DD date" unless iso_date?(ctx["created"])
  errors << "CTX-000: updated must be an ISO YYYY-MM-DD date" unless iso_date?(ctx["updated"])
  errors << "CTX-000: owners must be a non-empty string list" unless non_empty_string_list?(ctx["owners"])
  errors << "CTX-000: owners must include Project Lead" unless Array(ctx["owners"]).include?("Project Lead")
  errors << "CTX-000: audience must be a non-empty string list" unless non_empty_string_list?(ctx["audience"])
  errors << "CTX-000: source_of_truth must be boolean false" unless ctx["source_of_truth"] == false
  errors << "CTX-000: tags must be a list of non-empty strings" unless ctx["tags"].is_a?(Array) && ctx["tags"].all? { |tag| non_empty_string?(tag) }
  forbidden = CTX_FORBIDDEN_FIELDS & ctx.keys
  errors << "CTX-000: forbidden competing metadata fields #{forbidden.inspect}" unless forbidden.empty?

  sources = ctx["canonical_sources"]
  unless sources.is_a?(Array) && !sources.empty?
    errors << "CTX-000: canonical_sources must be a non-empty list"
  else
    source_targets = []
    sources.each do |ref|
      unless ref.is_a?(Hash) && ref.keys.sort == %w[reference_type target] && ref["reference_type"] == "canonical"
        errors << "CTX-000: each canonical_sources entry must contain exactly reference_type: canonical and target"
        next
      end
      source_targets << ref["target"]
    end
    errors << "CTX-000: duplicate canonical_sources targets" unless source_targets.uniq.length == source_targets.length
  end
  errors << "CTX-000: architecture_decisions must include AD-009" unless Array(ctx["architecture_decisions"]).include?("AD-009")
else
  errors << "CTX-000 must resolve exactly once (found #{ctx_matches.length})"
end

# CURATED APPLICABILITY ASSERTIONS — WP-005 migration baseline plus directly
# applicable Accepted Decisions implemented by later work packages. Generic
# validation above deliberately does not infer these sets from free prose.
expected_decisions = {
  "PB-000" => %w[AD-009 AD-010 AD-011 AD-012 AD-013 AD-014],
  "PB-003" => %w[AD-004 AD-010 AD-016],
  "PB-004" => %w[AD-001 AD-002 AD-003 AD-004 AD-006 AD-008 AD-010],
  "PB-997" => %w[AD-005 AD-010 AD-012 AD-013],
  "PB-998" => %w[AD-005 AD-007 AD-010 AD-014],
  "CTX-000" => %w[AD-009 AD-010 AD-013 AD-014 AD-015 AD-016]
}.freeze
expected_decisions.each do |id, expected|
  matches = by_id[id]
  next errors << "WP-005: affected document #{id} does not resolve exactly once" unless matches.one?
  actual = matches.first[1]["architecture_decisions"]
  errors << "curated: #{id} architecture_decisions applicability set mismatch" unless actual == expected
end

if errors.empty?
  puts "WP-005 metadata validation passed."
  puts "Documents checked: #{documents.length}"
  puts "Architecture Decisions checked: #{decision_entries.length} registered, #{architecture_decision_references} references"
  puts "References checked: #{reference_count}"
  puts "MANUAL VERIFICATION REQUIREMENT: semantic applicability/completeness of Architecture Decisions, CTX prose fidelity/non-normativity, title-heading equivalence, source-set completeness, and external reachability."
else
  warn errors.join("\n")
  warn "WP-005 metadata validation failed with #{errors.length} error(s)."
  exit 1
end
