class CalcAreaPuts
  require './lib/calc_area.rb'

  while str = STDIN.gets
    puts CalcArea.new(str.to_f).calc
  end
end

