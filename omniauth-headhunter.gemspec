require File.expand_path('../lib/omniauth-headhunter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_dependency 'multi_json'

  gem.authors       = ["Pavel Dubrovskiy"]
  gem.email         = ["alto.angles@gmail.com"]
  gem.description   = %q{Unofficial Headhunter strategy for OmniAuth 1.0}
  gem.summary       = %q{Unofficial Headhunter strategy for OmniAuth 1.0}
  gem.homepage      = "https://github.com/mamantoha/omniauth-headhunter"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-headhunter"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Headhunter::VERSION
end
