# understands its relationship to other units
class Unit
  TEASPOON = Object.new
  TABLESPOON = Object.new

  attr_reader :base_value, :type, :multiplier
  protected :base_value, :type, :multiplier

  def initialize(type, multiplier: 1, base_value:)
    @type = type
    @base_value = base_value
    @multiplier = multiplier
  end

  def ==(other)
    return false unless other.is_a?(Unit)
    self.base_value * self.multiplier == other.base_value * other.multiplier
  end

  def *(number)
    self.class.new(type, multiplier: multiplier * number, base_value: base_value)
  end
end
