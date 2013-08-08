# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'midfielder/version'

Gem::Specification.new do |spec|
  spec.name          = "midfielder"
  spec.version       = Midfielder::VERSION
  spec.authors       = ["Vitor Pellegrino"]
  spec.email         = ["vitorp@gmail.com"]
  spec.description   = %q{Stays at the middle of the field, connecting back to front ends.}
  spec.summary       = %q{Celluloid-based Scather/Gather for Ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency             "celluloid", "~> 0.14"
  spec.add_dependency             "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
end
