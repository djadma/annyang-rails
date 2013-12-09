require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('annyang-rails', '0.2.0') do |p|
  p.description    = "A tiny javascript SpeechRecognition library that lets your users control your site with voice commands."
  p.url            = "http://github.com/confiz/annyang-rails"
  p.author         = "Confiz Limited"
  p.email          = "opensource@confiz.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
