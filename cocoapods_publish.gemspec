# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_publish.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-publish"
  spec.version       = Pod::Publish::VERSION
  spec.authors       = ["Damien DANGLARD"]
  spec.email         = ["damien.danglard@kassylab.com"]
  spec.summary       = %q{Publish a Podspec in a Specs repo without linting it ("pod repo push" without linting).}
  spec.homepage      = "https://github.com/KassyLab/cocoapods-publish"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
