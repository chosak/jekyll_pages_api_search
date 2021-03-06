# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll_pages_api_search/version'

Gem::Specification.new do |s|
  s.name          = 'jekyll_pages_api_search'
  s.version       = JekyllPagesApiSearch::VERSION
  s.authors       = ['Mike Bland']
  s.email         = ['michael.bland@gsa.gov']
  s.summary       = 'Adds lunr.js search based on the jekyll_pages_api gem'
  s.description   = (
    'Contains a Jekyll plugin and associated files that facilitate adding ' +
    'client-side search features to a site using the jekyll_pages_api gem.'
  )
  s.homepage      = 'https://github.com/18F/jekyll_pages_api_search'
  s.license       = 'CC0'

  s.files         = `git ls-files -z *.md bin lib assets`.split("\x0") + [
    'assets/js/search-bundle.js',
    'assets/js/search-bundle.js.gz',
    'lib/jekyll_pages_api_search/lunr.min.js',
  ]
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }

  s.add_runtime_dependency 'jekyll_pages_api'
  s.add_runtime_dependency 'sass', '~> 3.4'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'jekyll'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'simplecov', '~> 0.16'
  s.add_development_dependency 'coveralls', '~> 0.8.13'
  s.add_development_dependency 'test_temp_file_helper'
end
