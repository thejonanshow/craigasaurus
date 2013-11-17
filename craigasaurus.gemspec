# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'craigasaurus/version'

Gem::Specification.new do |spec|
  spec.name          = "craigasaurus"
  spec.version       = Craigasaurus::VERSION
  spec.authors       = ["Jonan Scheffler"]
  spec.email         = ["jonanscheffler@gmail.com"]
  spec.description   = %q{Craigasaurus can be used to discover Craigslist URLs, search RSS feeds for keyword combinations and count keywords across multiple sites.}
  spec.summary       = %q{Craigasaurus is a utility gem for discovering and searching Craigslist sites.}
  spec.homepage      = "https://github.com/1337807/craigasaurus"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
