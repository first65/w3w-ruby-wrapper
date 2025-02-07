# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'what3words/version'

Gem::Specification.new do |spec|
  spec.name          = 'what3words'
  spec.version       = What3Words::VERSION
  spec.authors       = ['what3words']
  spec.email         = ['development@what3words.com']
  spec.description   = 'A Ruby wrapper fo the what3words API'
  spec.summary       = 'Ruby wrapper for the what3words API'
  spec.homepage      = 'http://rubygems.org/gems/what3words'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']
  spec.platform      = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency('rest-client', '>= 1.8', '< 3.0')

  spec.add_development_dependency 'bundler', '>= 1.7.9'
  spec.add_development_dependency 'rake', '~> 11.1'
  spec.add_development_dependency 'rspec', '~> 3.4'
  spec.add_development_dependency 'rubocop', '~> 0.48.1'
  spec.add_development_dependency 'webmock', '~> 3.0'
end
