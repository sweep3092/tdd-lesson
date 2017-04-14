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

    context 'when values pushed' do
      it "to be false" do
        stack = Stack.new
        expect(stack.empty?).to be_truthy
        stack.push([*1..3].sample)
        expect(stack.empty?).to be_falsey
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
        stack.push([*1..3].sample)
        expect(stack.size).to eq 1
      end
    end

    context 'when values pushed' do
      it "to be 2" do
        stack = Stack.new
        stack.push([*1..100].sample)
        expect(stack.size).to eq 1
        stack.push([*1..100].sample)
        expect(stack.size).to eq 2
      end
    end
  end
end
