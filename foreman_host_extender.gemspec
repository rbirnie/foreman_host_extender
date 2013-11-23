$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "foreman_host_extender/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = %q{foreman_host_extender}
  s.version     = ForemanHostExtender::VERSION
  s.authors = ["Robert Birnie"]
  s.email = "rbirnie@gmail.com"
  s.description = "Create additional columns in Foreman's Hosts model."
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = Dir["{app,extra,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.homepage = "http://github.com/rbirnie/foreman_host_extender"
  s.licenses = ["GPL-3"]
  s.summary = "Extend Foreman's Host model"

  s.add_dependency "deface"
  s.add_dependency "foreman_column_view"
end

