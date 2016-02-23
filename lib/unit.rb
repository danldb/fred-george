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
end
