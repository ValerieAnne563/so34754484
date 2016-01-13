require 'spec_helper'
require './lib/batching_core'

describe BatchingCore do
  it 'has a version number' do
    expect(BatchingCore::VERSION).not_to be nil
  end

  it 'has greeting' do
    expect(BatchingCore.greet("Val")).to eq("Hello, Val!")

  end
end
