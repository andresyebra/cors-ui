require_relative "lib/cors/ui/version"

Gem::Specification.new do |spec|
  spec.name        = "cors-ui"
  spec.version     = Cors::Ui::VERSION
  spec.authors     = [ "Andres Yebra" ]
  spec.email       = [ "andres.yebracervantes@gmail.com" ]
  spec.homepage    = "https://github.com/andresyebra/cors-ui"
  spec.summary     = "A simple UI for controlling the CORS."
  spec.description = "A simple UI for controlling the CORS settings that ship with Rack CORS Middleware."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andresyebra/cors-ui"
  spec.metadata["changelog_uri"] = "https://github.com/andresyebra/cors-ui/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.0"
  spec.add_dependency "rack-cors", ">= 2.0"
end
