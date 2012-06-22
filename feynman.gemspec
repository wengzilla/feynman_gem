# -*- encoding: utf-8 -*-
require File.expand_path('../lib/feynman/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Edward Weng"]
  gem.email         = ["edweng@gmail.com"]
  gem.description   = %q{Gem client for interacting with the feynman API}
  gem.summary       = %q{Gem client for interacting with the feynman API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "feynman_client"
  gem.require_paths = ["lib"]
  gem.version       = Feynman::VERSION
end
