# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "artoo-leapmotion/version"

Gem::Specification.new do |s|
  s.name        = "artoo-leapmotion"
  s.version     = Artoo::Leapmotion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ron Evans", "Andrew Stewart"]
  s.email       = ["artoo@hybridgroup.com"]
  s.homepage    = "https://github.com/hybridgroup/artoo-leapmotion"
  s.summary     = %q{Artoo adaptor and driver for Leap Motion}
  s.description = %q{Artoo adaptor and driver for Leap Motion}

  s.rubyforge_project = "artoo-leapmotion"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'artoo', '>= 1.6.0'
  s.add_runtime_dependency 'hybridgroup-celluloid-websocket-client'
  s.add_development_dependency 'minitest', '>= 5.0'
  s.add_development_dependency 'minitest-happy'
  s.add_development_dependency 'mocha', '>= 0.14.0'
end
