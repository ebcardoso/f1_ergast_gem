require_relative "lib/f1_ergast/version"

Gem::Specification.new do |spec|
  spec.name        = "f1_ergast"
  spec.version     = F1Ergast::VERSION
  spec.authors     = ["Breno Cardoso"]
  spec.email       = ["elisiobreno@gmail.com"]
  spec.homepage    = "http://www.github.com/ebcardoso"
  spec.summary     = "Ergast F1"
  spec.description = "Module for consume data from Ergast API"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{lib}/**/*.rb", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.5"
  spec.add_dependency "rspec-rails"
  spec.add_dependency "httparty"
end
