require 'measurement'

# Makes sure that the Measurement class is correct
RSpec.describe Measurement do

  subject(:measurement) { described_class.new(1, :gallon)}

  it "expresses its value in other measures" do
    expect(measurement.in(:teaspoon)).to eq Measurement.new(768, :teaspoon)
    expect(measurement.in(:tablespoon)).to eq 256
    expect(measurement.in(:ounce)).to eq 128
    expect(measurement.in(:cup)).to eq 16
    expect(measurement.in(:pint)).to eq 8
    expect(measurement.in(:quart)).to eq 4
    expect(measurement.in(:gallon)).to eq 1
  end

  it "can add two measures together" do
    gallon = described_class.new(1, :gallon)
    quart = described_class.new(1, :quart)
    expect((gallon + quart).in(:pint)).to eq(10)
  end

end
