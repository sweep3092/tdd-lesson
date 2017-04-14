require 'spec_helper'
require 'stack'

describe Stack do
  describe '#empty?' do
    context 'when create a stack' do
      it "to be true" do
        stack = Stack.new
        expect(stack.empty?).to be_truthy
      end
    end
  end

  describe '#top' do
    context 'when 1 pushed' do
      it "to be 1" do
        stack = Stack.new
        stack.push(1)
        expect(stack.top).to eq 1
      end
    end
  end

  describe '#size' do
    context 'when a value pushed' do
      it "to be 1" do
        stack = Stack.new
        stack.push(1)
        expect(stack.size).to eq 1
      end
    end
  end
end
