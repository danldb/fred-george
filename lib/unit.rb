# understands its relationship to other units
class Unit
  TEASPOON = Object.new
  TABLESPOON = Object.new

  attr_reader :base_value, :type, :multiplier
  protected :base_value, :type, :multiplier

  def initialize(type, base_value:)
    @type = type
    @base_value = base_value
    @multiplier = 1
  end

  def ==(other)
    return false unless other.is_a?(Unit)
    self.base_value * self.multiplier == other.base_value * other.multiplier
  end

  def *(number)
    @multiplier = multiplier * number
    self
  end
end
