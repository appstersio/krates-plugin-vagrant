# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kontena/plugin/vagrant'

Gem::Specification.new do |spec|
  spec.name          = "krates-plugin-vagrant"
  spec.version       = Kontena::Plugin::Vagrant::VERSION
  spec.authors       = ["Pavel Tsurbeleu"]
  spec.email         = ["info@kontena.io"]

  spec.summary       = "Krates Vagrant plugin"
  spec.description   = "Krates Vagrant plugin"
  spec.homepage      = "https://krates.appsters.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  # NOTE: Exclude files not relevant to the plugin
  spec.files        -= %w[ Dockerfile Makefile docker-compose.yml docker-compose.d.yml docker-compose.r.yml Jenkinsfile .dockerignore ]

  spec.add_runtime_dependency 'krates', '~> 1.6.0'
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
end
