require 'unit'
RSpec.describe Unit do
  subject(:unit) { Unit.new(Unit::TEASPOON, base_value: 1) }
  let(:other_unit) { Unit.new(Unit::TABLESPOON, base_value: 3)}
  let(:identical_unit) { Unit.new(Unit::TEASPOON, base_value: 1) }

  it "compares itself to other unit" do
    expect(unit == other_unit).to eq(false)
    expect(unit == identical_unit).to eq(true)
    expect(unit == Object.new).to eq(false)
    expect(unit == nil).to eq(false)
  end
end
