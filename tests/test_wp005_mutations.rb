#!/usr/bin/env ruby
require "fileutils"
require "tmpdir"
require "psych"
require "date"

ROOT = File.expand_path("..", __dir__)
VALIDATOR = File.join(ROOT, "scripts/validate_wp005.rb")
PB004 = "project-bible/governance/PB-004_Naming_And_Terminology.md"

def edit_pb004(root)
  path = File.join(root, PB004)
  text = File.read(path)
  match = text.match(/\A---[ \t]*\r?\n(.*?)\r?\n---[ \t]*\r?\n/m)
  data = Psych.safe_load(match[1], permitted_classes: [Date], aliases: false)
  yield data
  File.write(path, text.sub(match[0], "---\n#{Psych.dump(data).delete_prefix("---\n")}---\n"))
end

cases = {
  "accepted PB-004 applicability set" => nil,
  "PB-004 missing AD-012" => ->(r) { edit_pb004(r) { |d| d["architecture_decisions"].delete("AD-012") } },
  "PB-004 missing AD-017" => ->(r) { edit_pb004(r) { |d| d["architecture_decisions"].delete("AD-017") } },
  "PB-004 with uncurated AD-018" => ->(r) { edit_pb004(r) { |d| d["architecture_decisions"] << "AD-018" } },
  "PB-004 with nonexistent AD-999" => ->(r) { edit_pb004(r) { |d| d["architecture_decisions"] << "AD-999" } }
}

failed = []
cases.each do |name, mutation|
  Dir.mktmpdir("wp005-") do |tmp|
    FileUtils.cp_r(File.join(ROOT, "project-bible"), tmp)
    FileUtils.cp(File.join(ROOT, "PROJECT_4X_CONTEXT_HANDOFF.md"), tmp)
    FileUtils.mkdir_p(File.join(tmp, "scripts"))
    FileUtils.cp(VALIDATOR, File.join(tmp, "scripts"))
    mutation&.call(tmp)
    passed = system("ruby", File.join(tmp, "scripts/validate_wp005.rb"), out: File::NULL, err: File::NULL)
    failed << name if mutation ? passed : !passed
  end
end

abort("WP-005 applicability cases failed: #{failed.join(', ')}") unless failed.empty?
puts "WP-005 PB-004 applicability tests passed: #{cases.length}/#{cases.length} cases behaved as expected."
