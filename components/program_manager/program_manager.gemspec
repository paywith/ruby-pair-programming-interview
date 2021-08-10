$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "program_manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "program_manager"
  spec.version     = ProgramManager::VERSION
  spec.authors     = ["Developers"]
  spec.email       = ["developers@paywith.com"]
  spec.summary     = "ProgramManager plugin for PayWith services"
  spec.description = "ProgramManager plugin for PayWith services"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*"]
end
