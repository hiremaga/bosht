# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bosht/version'

Gem::Specification.new do |spec|
  spec.name          = "bosht"
  spec.version       = Bosht::VERSION
  spec.authors       = ["Abhi Hiremagalur"]
  spec.email         = ["abhijit@hiremaga.com"]
  spec.description   = %q{BOSHT is an experimental cli for BOSH}
  spec.summary       = %q{BOSHT is an experimental cli for BOSH, it's built with Thor}
  spec.homepage      = "http://github.com/hiremaga/bosht"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
