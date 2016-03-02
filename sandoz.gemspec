# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sandoz/version'

Gem::Specification.new do |s|
  s.name             = 'sandoz'
  s.version       = Sandoz::VERSION
  s.authors       = ["Harley Swick"]
  s.email         = ["hswick@example.com"]
  s.summary       = "A gem named Sandoz."
  s.description   = "Ruby p5.js wrapper for trippy visuals."
  s.homepage      = "https://github.com/hswick/sandoz"
  s.license       = "MIT"

  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = "bin"
  s.executables   = ["sandoz"]
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_dependency 'sinatra', '~> 1.4'
  s.add_dependency 'opal', '~> 0.9'
  s.add_dependency 'thor', '~> 0.19.1'
end
