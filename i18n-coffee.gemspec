# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "i18n/coffee/version"

Gem::Specification.new do |s|
  s.name          = "i18n-coffee"
  s.version       = I18n::Coffee::Version.dup
  s.licenses      = ["MIT"]
  s.summary       = "Rails client-side i18n translation"
  s.description   = "A simple rails engine for client-side translation"
  s.authors       = ["Chanmann Lim"]
  s.email         = "chanmannlim@gmail.com"
  s.homepage      = "https://rubygems.org/gems/i18n-coffee"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.platform      = Gem::Platform::RUBY

  s.add_dependency "rails", ">= 3.2"
end
