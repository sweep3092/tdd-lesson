class CalcArea
  def initialize(radius)
    @radius = radius
  end

  def calc
    (@radius*@radius*Math::PI).round
  end
end
