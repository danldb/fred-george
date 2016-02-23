require 'unit'
RSpec.describe Unit do
  subject(:teaspoon) { Unit::TEASPOON }
  let(:tablespoon) { Unit::TABLESPOON }
  let(:another_teaspoon) { Unit::TEASPOON }

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
