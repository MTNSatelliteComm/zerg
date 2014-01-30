# -*- encoding: utf-8 -*-
require File.expand_path("../lib/zerg/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "zerg"
  s.version     = Zerg::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Marat Garafutdinov"]
  s.email       = ["maratoid@gmail.com"]
  s.homepage    = "https://github.com/MTNSatelliteComm/zerg"
  s.summary     = "Zerg is a tool for launching an arbitrary number of virtual machines and running a task on all of them at once"
  s.description = "Zerg is a tool for launching an arbitrary number of virtual machines and running a task on all of them at once"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "zerg"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "rake"

  s.add_dependency "awesome_print"
  s.add_dependency "json-schema"
  s.add_dependency "thor"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
