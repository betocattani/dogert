# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogert/version'

Gem::Specification.new do |spec|
  spec.name          = "dogert"
  spec.version       = Dogert::VERSION
  spec.authors       = ["betocattani"]
  spec.email         = ["contato.cattani@gmail.com"]
  spec.summary       = %q{English to doge translations}
  spec.description   = %q{Convert everday boring English into doge.}
  spec.homepage      = "https://rubygems.org/gems/dogert"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "engtagger"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
