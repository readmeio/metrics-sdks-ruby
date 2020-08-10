require_relative "lib/readme/metrics/version"

Gem::Specification.new do |spec|
  spec.name = "readme-metrics"
  spec.version = Readme::Metrics::VERSION
  spec.authors = ["Joël Quenneville"]
  spec.email = ["joelq@thoughtbot.com"]

  spec.summary = "SDK for Readme's metrics API"
  spec.description = "Middleware for logging requests to Readme's metrics API"
  spec.homepage = "https://docs.readme.com/metrics/docs/getting-started-with-api-metrics"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/readmeio/metrics-sdks/blob/master/packages/ruby"
  spec.metadata["changelog_uri"] = "https://github.com/readmeio/metrics-sdks/blob/master/packages/ruby/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end