# -*- encoding: utf-8 -*-
# stub: pry-theme 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-theme"
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kyrylo Silin"]
  s.date = "2014-07-21"
  s.description = "The plugin enables color theme support for Pry."
  s.email = "kyrylosilin@gmail.com"
  s.homepage = "https://github.com/kyrylo/pry-theme"
  s.licenses = ["zlib"]
  s.rubygems_version = "2.2.2"
  s.summary = "An easy way to customize Pry colors via theme files"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["~> 1.8"])
      s.add_runtime_dependency(%q<coderay>, ["~> 1.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<json>, ["~> 1.8"])
      s.add_dependency(%q<coderay>, ["~> 1.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<json>, ["~> 1.8"])
    s.add_dependency(%q<coderay>, ["~> 1.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
