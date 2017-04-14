require 'spec_helper'
require 'stack'

describe Stack do

  before do
    stack = Stack.new
  end
  
  describe '#empty?' do
    it "to be true when create a stack" do
      expect(stack.empty?).to be_truthy
    end
  end

  describe '#top' do
    it "when create a stack" do
      expect(stack.top).to eq 1
    end
  end


end
