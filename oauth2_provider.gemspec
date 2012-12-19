# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = %q{oauth2_provider}
  spec.version       = "0.4.0"

  spec.authors       = ["ThoughtWorks, Inc.", "Patrick Tulskie"]
  spec.email         = ["ketan@thoughtworks.com", "patricktulskie@gmail.com"]
  spec.summary       = %q{A Rails plugin to OAuth v2.0 enable your rails application}
  spec.description   = %q{A Rails plugin to OAuth v2.0 enable your rails application, forked from http://github.com/ThoughtWorksStudios/oauth2_provider, with partial v2-22 support.}
  spec.homepage      = %q{http://github.com/PatrickTulskie/oauth2_provider}

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  if spec.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    spec.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      spec.add_runtime_dependency(%q<validatable>, ["= 1.6.7"])
      spec.add_development_dependency(%q<saikuro_treemap>, [">= 0"])
      spec.add_development_dependency(%q<rcov>, ["= 0.9.8"])
    else
      spec.add_dependency(%q<validatable>, ["= 1.6.7"])
      spec.add_dependency(%q<saikuro_treemap>, [">= 0"])
      spec.add_dependency(%q<rcov>, ["= 0.9.8"])
    end
  else
    spec.add_dependency(%q<validatable>, ["= 1.6.7"])
    spec.add_dependency(%q<saikuro_treemap>, [">= 0"])
    spec.add_dependency(%q<rcov>, ["= 0.9.8"])
  end
end
