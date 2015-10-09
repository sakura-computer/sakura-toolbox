# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sakura/toolbox/version'

Gem::Specification.new do |spec|
  spec.name          = "sakura-toolbox"
  spec.version       = Sakura::Toolbox::VERSION
  spec.authors       = ["sakura-conputer"]
  spec.email         = ["ishimoto.masaru@sakura-conputer.co.jp"]

  spec.summary       = "This gem is just bootstrapping gems package."
  spec.description   = "This gem is just bootstrapping gems package."
  spec.homepage      = "https://github.com/sakura-computer/sakura-skeleton"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"

  # runtime basic dependency
  spec.add_runtime_dependency "execjs", "~> 2.6"
  spec.add_runtime_dependency "jquery-turbolinks", "~> 2.1"
  spec.add_runtime_dependency "rails-i18n", "~> 4.0"
  spec.add_runtime_dependency "devise", "~> 3.5"
  spec.add_runtime_dependency "validates_email_format_of", "~> 1.6"
  spec.add_runtime_dependency "validates_timeliness", "~> 3.0"
  # association models
  spec.add_runtime_dependency "cocoon", "~> 1.2"
  # spiner
  spec.add_runtime_dependency "spinjs-rails", "~> 1.4"
  # for env value
  spec.add_runtime_dependency "dotenv-rails", "~> 2.0"
  # pager
  spec.add_runtime_dependency "kaminari", "~> 0.16"
  # operator
  spec.add_runtime_dependency "record_with_operator", "~> 1.0"
  # session
  spec.add_runtime_dependency "activerecord-session_store", "~> 0.1"
  # roles
  spec.add_runtime_dependency "cancancan", "~> 1.12"
  # bootstrap
  spec.add_runtime_dependency "bootstrap-sass", "~> 3.3"
  # decorator
  spec.add_runtime_dependency "draper", "~> 2.1"
  
end
