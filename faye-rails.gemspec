# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "faye-rails/version"

Gem::Specification.new do |s|
  s.name        = "faye-rails"
  s.version     = "#{FayeRails::VERSION}"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["James Harton", "Ryan Lovelett", "Dmitriy Kiriyenko"]
  s.email       = ["james@sociable.co.nz", "ryan@lovelett.me", "dmitriy.kiriyenko@gmail.com"]
  s.homepage    = "https://github.com/dmitriy-kiriyenko/faye-rails"
  s.summary     = "Faye bindings for Rails 4+."
  s.license     = 'MIT'

  s.add_dependency "faye", ["~> 0.8.9"]
  s.add_dependency 'eventmachine', ['~> 1.0.0']
  s.add_development_dependency "rails", ["~> 4.0"]
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
  s.add_development_dependency 'rspec-core'
  s.add_development_dependency 'rspec-mocks'
  s.add_development_dependency 'rspec-expectations'
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "mocha"
  s.add_development_dependency "thin"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-bundler"
  s.add_development_dependency 'rb-fsevent', ['~> 0.9.1']

  s.files = %w(README.md) + Dir["lib/**/*", "vendor/**/*"]

  s.require_paths = ["lib"]
end
