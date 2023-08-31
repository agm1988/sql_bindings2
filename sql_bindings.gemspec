# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'sql_bindings'
  s.version       = '1.0.0'
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.files         = %w[lib/sql_bindings.rb]
  s.required_ruby_version = '>= 2.5.0'
  s.homepage      = 'https://github.com/agm1988/sql_bindings'
  s.license       = 'MIT'
  s.add_development_dependency 'minitest', '~> 5.13.0'
  s.add_development_dependency 'sqlite3', '~> 1.4.1'
  s.add_runtime_dependency 'activerecord', '~> 7.1'
end
