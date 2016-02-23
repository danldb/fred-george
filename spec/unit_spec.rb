require 'unit'
RSpec.describe Unit do
  subject(:teaspoon) { Unit.new(Unit::TEASPOON, base_value: 1) }
  let(:tablespoon) { Unit.new(Unit::TABLESPOON, base_value: 3)}
  let(:another_teaspoon) { Unit.new(Unit::TEASPOON, base_value: 1) }

  it "compares itself to other unit" do
    expect(teaspoon == tablespoon).to eq(false)
    expect(teaspoon == another_teaspoon).to eq(true)
    expect(teaspoon == Object.new).to eq(false)
    expect(teaspoon == nil).to eq(false)
  end

  it "can compare different types of units" do
    expect(teaspoon * 3).to eq tablespoon 
  end
end
