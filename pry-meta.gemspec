# -*- encoding: utf-8 -*-
require './lib/pry-meta/version'

Gem::Specification.new do |gem|
  gem.name          = 'pry-meta'
  gem.version       = Pry::Meta::VERSION
  gem.authors       = ['Nando Vieira']
  gem.email         = ['fnando.vieira@gmail.com']
  gem.description   = 'Meta package that requires several pry extensions.'
  gem.summary       = gem.description

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'pry'
  gem.add_dependency 'pry-byebug'
  gem.add_dependency 'pry-remote'
  gem.add_dependency 'awesome_print'
end
