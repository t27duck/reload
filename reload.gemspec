# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reload/version'

Gem::Specification.new do |spec|
  spec.name          = "reload"
  spec.version       = Reload::VERSION
  spec.authors       = ["Tony Drake"]
  spec.email         = ["t27duck@gmail.com"]
  spec.description   = %q{reload without the bang and remembering!}
  spec.summary       = %q{I keep forgetting to type the ! in reaload! while in Rails console. Now I don't have to.}
  spec.homepage      = "https://github.com/t27duck/reload"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "rails"
end
