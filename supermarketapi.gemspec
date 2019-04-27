
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "supermarketapi/version"

Gem::Specification.new do |spec|
  spec.name          = "supermarketapi"
  spec.version       = Supermarketapi::VERSION
  spec.authors       = ["Xorima"]
  spec.email         = ["jason@avon-lea.co.uk"]

  spec.summary       = 'Chef Supermarket Api Gem'
  spec.description   = 'Gem to interact with the Chef Supermarket Restful API'
  spec.homepage      = "https://github.com/xorima/supermarketapi"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/xorima/supermarketapi"
  spec.metadata["changelog_uri"] = "https://github.com/xorima/supermarketapi"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "httparty"
  spec.add_dependency "hashie"
  spec.add_dependency "json" if RUBY_VERSION < '1.9.2'
end
