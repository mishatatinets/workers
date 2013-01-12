# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'workers/version'

Gem::Specification.new do |gem|
  gem.name          = "workers"
  gem.version       = Workers::VERSION
  gem.authors       = ["Chad Remesch"]
  gem.email         = ["chad@remesch.com"]
  gem.description   = %q{Simple to use Ruby workers for performing work in background threads.}
  gem.summary       = %q{Simple to use Ruby workers featuring high performance, simple to use API, customizable workers, and thread pooling.}
  gem.homepage      = "https://github.com/chadrem/workers"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end