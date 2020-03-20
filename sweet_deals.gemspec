require_relative 'lib/sweet_deals/version'

Gem::Specification.new do |spec|
  spec.name          = "sweet_deals"
  spec.version       = SweetDeals::VERSION
  spec.authors       = ["nathan-stamand"]
  spec.email         = ["nathansaint810@gmail.com"]

  spec.summary       = %q{Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/nathan-stamand/sweet_deals"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nathan-stamand/sweet_deals"
  spec.metadata["changelog_uri"] = "https://github.com/nathan-stamand/sweet_deals"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.1.2"
  spec.add_development_dependency "rake", ">= 12.3.3" 
  spec.add_development_dependency "pry"
  
  spec.add_dependency "nokogiri"

end
