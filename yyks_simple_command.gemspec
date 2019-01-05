# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yyks_simple_command/version'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 2.0'
  s.name          = 'yyks_simple_command'
  s.version       = SimpleCommand::VERSION
  s.authors       = ['Moicen']
  s.email         = ['i@moicen.com']
  s.summary       = 'Easy way to build and manage commands (service objects)'
  s.description   = 'Easy way to build and manage commands (service objects)'
  s.homepage      = 'https://github.com/youyikeshu/simple_command'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(/^bin\//) { |f| File.basename(f) }
  s.test_files    = s.files.grep(/^(test|spec|features)\//)
  s.require_paths = ['lib']
  
  s.add_development_dependency 'rake', '>= 10.0'
  s.add_development_dependency 'rspec', '>= 3.1'
end
