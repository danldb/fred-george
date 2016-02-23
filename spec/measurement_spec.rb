require 'measurement'

# Makes sure that the Measurement class is correct
RSpec.describe Measurement do
  subject(:one_teaspoon) { described_class.new(1, Unit::TEASPOON) }
  let(:another_teaspoon) { described_class.new(1, Unit::TEASPOON) }
  let(:one_tablespoon) { described_class.new(1, Unit::TABLESPOON) }
  let(:three_teaspoons) { described_class.new(3, Unit::TEASPOON) }

  it "compares itself to other measurements" do
    expect(one_teaspoon == another_teaspoon).to be true
    expect(one_teaspoon == one_tablespoon).to be false
    expect(one_teaspoon == Object.new).to be false
    expect(one_teaspoon == nil).to be false
  end

  it "compares equivalent measurements" do
    expect(three_teaspoons == one_tablespoon).to be true
  end
end
