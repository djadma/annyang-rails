# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "annyang-rails"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Confiz Limited"]
  s.date = "2013-12-10"
  s.description = "A tiny javascript SpeechRecognition library that lets your users control your site with voice commands."
  s.email = "ahmad.hussain@confiz.com"
  s.extra_rdoc_files = ["README.md", "lib/annyang-rails.rb", "lib/annyang-rails/version.rb"]
  s.files = ["README.md", "Rakefile", "app/helpers/annyang_helper.rb", "init.rb", "lib/annyang-rails.rb", "lib/annyang-rails/version.rb", "vendor/assets/javascripts/annyang.js", "vendor/assets/javascripts/annyang.min.js", "Manifest", "annyang-rails.gemspec"]
  s.homepage = "http://github.com/confiz/annyang-rails"
  s.rdoc_options = ["--line-numbers", "--title", "Annyang-rails", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "annyang-rails"
  s.rubygems_version = "1.8.24"
  s.summary = "A tiny javascript SpeechRecognition library that lets your users control your site with voice commands."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
