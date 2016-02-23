# understands its relationship to other units
class Unit
  attr_reader :base_value, :multiplier
  protected :base_value, :multiplier

  def initialize(base_value, multiplier: 1)
    @base_value = base_value
    @multiplier = multiplier
  end

  def ==(other)
    return false unless other.is_a?(Unit)
    self.base_value * self.multiplier == other.base_value * other.multiplier
  end

  def *(number)
    self.class.new(base_value, multiplier: multiplier * number)
  end

  TEASPOON = Unit.new(1)
  TABLESPOON = Unit.new(3)
  OUNCE = Unit.new(6)
  CUP = Unit.new(48)
  PINT = Unit.new(96)
  QUART = Unit.new(192)
  GALLON = Unit.new(768)
end
