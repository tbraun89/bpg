# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bpg/version'

Gem::Specification.new do |spec|
  spec.name          = 'bpg'
  spec.version       = Bpg::VERSION
  spec.authors       = ['Torsten Braun']
  spec.email         = ['tbraun@tnt-web-solutions.de']
  spec.summary       = %q{Load JPEG files and return them is BPG.}
  spec.description   = %q{This library uses libbpg to convert JPEG images to convert them to BPG image format.}
  spec.homepage      = 'https://github.com/tbraun89/bpg'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
