require 'spec_helper'
require 'stack'

describe Stack do
  it "create a stack" do
    stack = Stack.new
    expect(stack.empty?).to be_truthy
  end
end
