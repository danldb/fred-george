# Understands quantities of different units
class Measurement
  attr_reader :quantity, :unit
  protected :quantity, :unit

  def initialize(quantity, unit)
    @quantity = quantity
    @unit = unit
  end

  def ==(other)
    return false unless other.is_a? Measurement
    self.unit * self.quantity  == other.unit * other.quantity
  end
end
