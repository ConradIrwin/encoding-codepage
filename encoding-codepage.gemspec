Gem::Specification.new do |s|
  s.name = "encoding-codepage"
  s.version = "0.1"
  s.platform = Gem::Platform::RUBY
  s.author = "Conrad Irwin"
  s.email = "conrad.irwin@gmail.com"
  s.license = "MIT, Microsoft Limited Public License"
  s.homepage = "https://github.com/ConradIrwin/encoding-codepage"
  s.summary = "Allow looking up Encodings by their Code Page Identifier"
  s.description = "Provides aliases for Encodings that have Code Page Identifiers to make it easier to interface with Microsoft APIs that use Code Page Identifiers to describe content"
  s.files = ["lib/encoding-codepage.rb", "lib/codepages.tsv", "README.md", "LICENSE.MIT", "LICENSE.MLPL"]
  s.require_path = "lib"
end
