# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'em-printer-serialport/version'

Gem::Specification.new do |gem|
  gem.name        = 'em-printer-serialport'
  gem.version     = Em::Serialport::VERSION
  gem.authors     = ['Anup Narkhede', 'Kaz Walker']
  gem.email       = ['kaz@printtopeer.com']
  gem.summary     = %q{EventMachine compatible serialport library}
  gem.description = %q{}
  gem.homepage    = 'https://github.com/PrintToPeer/em-printer-serialport'
  gem.license = 'GPLv3'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'eventmachine', '~> 1.0.0'
  gem.add_dependency 'serialport'
  gem.add_development_dependency 'bundler', '~> 1.3.0'
  gem.add_development_dependency 'rake', '~> 10.1.0'
  gem.add_development_dependency 'rspec', '~> 2.14.0'
end