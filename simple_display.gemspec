$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_display/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_display"
  s.version     = SimpleDisplay::VERSION
  s.authors     = ["Marc Riera"]
  s.email       = ["mrc2407@gmail.com"]
  s.homepage    = "https://github.com/mrcasals/simple_display"
  s.summary     = "Display your Rails models easily"
  s.description = "Display your Rails models easily"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "rails", "~> 3.2.18"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'whiny_validation'
end
