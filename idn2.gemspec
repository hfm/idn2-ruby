
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idn2/version'

Gem::Specification.new do |spec|
  spec.name          = 'idn2'
  spec.version       = Idn2::VERSION
  spec.authors       = ['OKUMURA Takahiro']
  spec.email         = ['hfm.garden@gmail.com']

  spec.summary       = 'Libidn2 Ruby Bindings.'
  spec.description   = 'Ruby Bindings for the GNU libidn2 library, which is an
    implementation of IDNA2008 and TR46.
    This provides encoding and decoding internationalized domain names.
  '
  spec.homepage      = 'https://github.cmo/hfm/idn2-ruby'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.extensions    = ['ext/idn2/extconf.rb']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rake-compiler'
end
