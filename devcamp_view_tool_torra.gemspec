require_relative 'lib/devcamp_view_tool_torra/version'

Gem::Specification.new do |spec|
  spec.name          = "devcamp_view_tool_torra"
  spec.version       = DevcampViewToolTorra::VERSION
  spec.authors       = ["Ervin Torra"]
  spec.email         = ["ervintorra@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://github.com/ervintorra"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "github.com/ervintorra"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ervintorra"
  spec.metadata["changelog_uri"] = "https://github.com/ervintorra/devcamp_view_tool_torra/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
