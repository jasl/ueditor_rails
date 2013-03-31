$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ueditor_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ueditor_rails"
  s.version     = UeditorRails::VERSION
  s.authors     = ["Jasl"]
  s.email       = ["jasl9187@hotmail.com"]
  s.homepage    = "http://github.com/jasl/ueditor_rails"
  s.summary     = "Ueditor integration on Rails"
  s.description = "Ueditor is a WYSIWYG editor adapt to Chinese habits, this gem is a easy way to integrate with Rails"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.markdown"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.1"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
