# -*- encoding: utf-8 -*-
# stub: ruby_eureka 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby_eureka".freeze
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jianbo Cui".freeze]
  s.date = "2018-08-12"
  s.email = ["jianbo.cui@harmoney.co.nz".freeze]
  s.executables = ["console".freeze, "setup".freeze, "sidecar".freeze, "sidecar-1.0.jar".freeze]
  s.files = ["bin/console".freeze, "bin/setup".freeze, "bin/sidecar".freeze, "bin/sidecar-1.0.jar".freeze]
  s.homepage = "https://github.com/harmoney-jianbo/ruby-eureka".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.5".freeze
  s.summary = "A Ruby Wrapper for Eureka Sidecar client".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
  end
end
