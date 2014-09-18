# -*- encoding: utf-8 -*-
# stub: grape-active_model_serializers 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "grape-active_model_serializers"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jonathan Richard Henry Evans"]
  s.date = "2014-07-23"
  s.description = "Provides a Formatter for the Grape API DSL to emit objects serialized with active_model_serializers."
  s.email = ["contact@jrhe.co.uk"]
  s.homepage = "https://github.com/jrhe/grape-active_model_serializers"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Use active_model_serializer in grape"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<grape>, ["~> 0.3"])
      s.add_runtime_dependency(%q<active_model_serializers>, [">= 0.9.0.alpha1"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<jazz_hands>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
    else
      s.add_dependency(%q<grape>, ["~> 0.3"])
      s.add_dependency(%q<active_model_serializers>, [">= 0.9.0.alpha1"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<jazz_hands>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<grape>, ["~> 0.3"])
    s.add_dependency(%q<active_model_serializers>, [">= 0.9.0.alpha1"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<jazz_hands>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
  end
end
