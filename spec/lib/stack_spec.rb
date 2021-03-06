require 'spec_helper'
require 'stack'

describe Stack do
  before do
    @values = [*1..100]
  end

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
        stack.push(@values.sample)
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

    context 'when values are empty' do
      it 'to raise err' do
        stack = Stack.new
        expect{stack.top}.to raise_error Stack::EmptyStackError
      end
    end
  end

  describe '#size' do
    context 'when a value pushed' do
      it "to be 1" do
        stack = Stack.new
        stack.push(@values.sample)
        expect(stack.size).to eq 1
      end
    end

    context 'when values pushed' do
      it "to be 2" do
        stack = Stack.new
        stack.push(@values.sample)
        expect(stack.size).to eq 1
        stack.push(@values.sample)
        expect(stack.size).to eq 2
      end
    end

    context 'when values pushed and poped' do
      it 'to be 0' do
        stack = Stack.new
        stack.push(@values.sample)
        stack.push(@values.sample)
        expect(stack.size).to eq 2
        stack.pop
        expect(stack.size).to eq 1
      end
    end
  end

  describe '#pop' do
    context 'when size is 0' do
      it 'to raise err' do
        stack = Stack.new
        expect{stack.pop}.to raise_error(Stack::EmptyStackError)
      end
    end

    context 'when a value poped' do
      it 'to be 0' do
        stack = Stack.new
        stack.push(@values.sample)
        stack.pop
        expect(stack.size).to eq 0
      end
    end

  end
end
