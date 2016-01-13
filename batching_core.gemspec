# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'batching_core/version'

Gem::Specification.new do |spec|
  spec.name          = "batching_core"
  spec.version       = BatchingCore::VERSION
  spec.authors       = ["Valerie Houseman"]
  spec.email         = ["redacted@gmail.com"]
  spec.licenses      = ['MIT']

  spec.summary       = %q{Reproduce troubles installing a gem}
  spec.description   = %q{Demonstrates gem installing failure when platform = java}
  spec.homepage      = "http://stackoverflow.com/questions/34754484/locally-install-a-gem-built-with-platform-java-jruby-1-7-18"
  # spec.platform      = "java"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails" , "~> 3.0"

  # Import the Javas!
  # Reference: https://github.com/mkristian/jar-dependencies/tree/master/examples/gem-with-jar-dependencies
  spec.requirements << "jar com.amazonaws, aws-java-sdk-core, 1.9.7"
  spec.requirements << "jar com.amazonaws, aws-java-sdk-sts, 1.9.7"
  spec.requirements << "jar com.amazonaws, aws-java-sdk-cloudwatch, 1.9.7"
  spec.add_runtime_dependency "jar-dependencies" , "0.3.1"
end
