# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "foreman_host_extender"
  gem.homepage = "http://github.com/rbirnie/foreman_host_extender"
  gem.license = "GPL-3"
  gem.summary = %Q{Extend Foreman's Host model }
  gem.description = %Q{Add fields to Foreman hosts}
  gem.email = "rbirnie@gmail.com"
  gem.authors = ["Robert Birnie"]
  # dependencies defined in Gemfile
end

task :default => :test
