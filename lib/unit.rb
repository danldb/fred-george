# understands its relationship to other units
class Unit
  TEASPOON = Object.new
  TABLESPOON = Object.new

  attr_reader :base_value, :type
  protected :base_value, :type

  def initialize(type, base_value:)
    @type = type
    @base_value = base_value
  end

  def ==(other)
    return false unless other.is_a?(Unit)
    self.base_value == other.base_value && self.type == other.type
  end
end
