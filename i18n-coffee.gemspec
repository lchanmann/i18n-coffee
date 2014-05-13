Gem::Specification.new do |s|
  s.name          = "i18n-coffee"
  s.version       = "0.1.1"
  s.authors       = ["Chanmann Lim"]
  s.email         = "chanmannlim@gmail.com"
  s.homepage      = "https://rubygems.org/gems/i18n-coffee"
  s.summary       = "Rails client-side i18n translation"
  s.description   = s.summary

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "rails"
  s.add_dependency "coffee-rails"
  s.add_dependency "i18n"
end
