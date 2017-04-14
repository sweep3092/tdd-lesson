require 'spec_helper'
require 'calc_area'

describe CalcArea do
  describe '#calc' do
    it 'to be circle area' do
      val = Random.rand(5000)
      c = CalcArea.new(val)
      expect(c.calc).to eq (val*val*Math::PI).round
    end

    context 'with static values' do
      it 'to be circle area' do
        values = [0.2138, 333, 87, 43.5, 947.1, 7.4512, 893.223431]
        results = [0, 348368, 23779, 5945, 2818004, 174, 2506514]
        values.each_with_index do |v, index|
          c = CalcArea.new(v)
          expect(c.calc).to eq results[index]
        end
      end
    end
  end
end
