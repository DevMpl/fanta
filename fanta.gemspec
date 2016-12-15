$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fanta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fanta"
  s.version     = Fanta::VERSION
  s.authors     = ["MP harada"]
  s.email       = ["harada@mediapl.co.jp"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Fanta."
  s.description = "TODO: Description of Fanta."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
	s.add_dependency "mysql2", "0.4.5"
	s.add_dependency "nokogiri", "1.6.0"
	s.add_dependency "kaminari"
	s.add_dependency "simple_form"
	s.add_dependency "semantic-ui-sass"
  s.add_dependency "ckeditor"
	s.add_dependency "active_decorator"
	s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails", "5.0.5"
	s.add_dependency "cocoon"

	s.add_dependency "pry"
	s.add_dependency "pry-rails"
	s.add_dependency "pry-nav"
	s.add_dependency "better_errors"
	s.add_dependency "binding_of_caller"
	
end
