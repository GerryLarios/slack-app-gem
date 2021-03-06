require_relative 'lib/slack_app/version'

Gem::Specification.new do |spec|
  spec.name          = "slack_app"
  spec.version       = SlackApp::VERSION
  spec.authors       = ["Gerry Larios"]
  spec.email         = ["gerardo.larios69@gmail.com"]

  spec.summary       = %q{A Ruby wrapper for the Slack Api. Block kit included.}
  spec.description   = %q{A Ruby wrapper for the Slack Api. Block kit included.}
  spec.homepage      = "https://github.com/GerryLarios/slack-app-gem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/GerryLarios/slack-app-gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  # Dependencies
  spec.add_runtime_dependency 'httparty', '~> 0.18.1'
end
