# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'underscore_params/version'

Gem::Specification.new do |spec|
  spec.name          = "underscore_params"
  spec.version       = UnderscoreParams::VERSION
  spec.authors       = ["Anson Kelly"]
  spec.email         = ["ansonkelly@gmail.com"]
  spec.summary       = %q{Forces all rails request params to be underscored.}
  spec.description   = %q{Forces all rails request params (both GET and POST) to be underscored.}
  spec.homepage      = "https://github.com/ansonK/underscore_params"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", '>= 3'
end
