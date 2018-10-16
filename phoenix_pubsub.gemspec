# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phoenix/pubsub/version'

Gem::Specification.new do |s|
  s.name          = 'phoenix_pubsub'
  s.version       = Phoenix::Pubsub::VERSION
  s.summary       = %q{Phoenix PubSub for Ruby}
  s.description   = %q{Publish messages to Phoenix channels from Ruby}

  s.authors       = ['Andreas Böhrnsen']
  s.email         = ['andreas@frontrunner.io']
  s.homepage      = 'https://github.com/frontrunnerio/phoenix_pubsub_rb'

  s.license       = 'MIT'

  s.required_ruby_version = '>= 2.0'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ['lib']

  s.add_dependency 'erlang-etf', '2.0.0'
  s.add_dependency 'redis', '~> 3.0'

  s.add_development_dependency 'bundler', '~> 1.9'
  s.add_development_dependency 'rake', '~> 10.0'

  # testing
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'shoulda-context', '~> 1.2'
end
