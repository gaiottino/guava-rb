# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)

require 'guava/version'

Dir['ext/*.jar'].each { |jar| require jar }


Gem::Specification.new do |s|
  s.name        = 'guava-rb'
  s.version     = Guava::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Daniel Gaiottino']
  s.email       = ['daniel@burtcorp.com']
  s.homepage    = 'http://github.com/gaiottino/guava-rb'
  s.summary     = %q{Google Guava Wrapper}
  s.description = %q{A simple JRuby wrapper for Google Guava}

  s.rubyforge_project = 'guava-rb'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
end
