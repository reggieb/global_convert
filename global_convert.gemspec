$:.push File.expand_path("../lib", __FILE__)

# Maintain gem's version:
require "global_convert/version"

Gem::Specification.new do |s|
  s.name        = "global_convert"
  s.version     = GlobalConvert::VERSION
  s.authors     = ["Rob Nichols"]
  s.email       = ["rob@undervale.co.uk"]
  s.homepage    = "https://github.com/reggieb/global_convert"
  s.summary     = "Tool for converting coordinates between different global charting systems"
  s.description = "Simplifies converting from longitudes and latitudes, to eastings and northings."
  s.license = 'LICENSE'
  s.files = Dir["lib/**/*"] + ["LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'proj4rb'

end