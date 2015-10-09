require "glass"

describe Glass do
  it "should return an empty glass with capacity, weight and name" do
  	pint = Glass.new(0.473, 0.2, "pint")
  	expect(pint.capacity).to eq(0.473)
  	expect(pint.name).to eq("pint")
    expect(pint.weight).to eq(0.2)
  end

  it "should not have negative capacity" do
    expect{Glass.new(-1)}.to raise_error ArgumentError
  end

  it "should not have negative weight" do
    expect{Glass.new(3, -2, "weird")}.to raise_error ArgumentError
  end

  it "when full should return correct weight" do
    glass = Glass.new(0.2, 0.4, "glass")
    glass.fill
    expect(glass.weight).to eq(0.6)
  end
end
