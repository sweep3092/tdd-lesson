require 'spec_helper'
require 'calc_area'

describe CalcArea do
  describe '#calc' do
    it 'to be circle area' do
      val = Random.rand(5000)
      c = CalcArea.new(val)
      expect(c.calc).to eq (val*val*Math::PI).round
    end
  end
end

