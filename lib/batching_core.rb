require "batching_core/version"
require Dir[ File.dirname(__FILE__) + "/*_jars.rb" ].first
require 'java'
java_import 'com.amazonaws.auth.DefaultAWSCredentialsProviderChain'

module BatchingCore
  def self.greet(name)
    g = "Hello, " + name + "!"
    puts g
    g
  end
end
