require "container"

describe Container do
  it "should return an empty container with volume and name" do
	beer = Container.new(1, "beer")
	expect(beer.volume).to eq(1)
	expect(beer.name).to eq("beer")
  end

  it "cannot be initialized with negative volume" do
  	expect{ Container.new(-1, "beer") }.to raise_error ArgumentError
  end

  it "with empty name returns generic name" do
  	generic = Container.new(1)
  	expect(generic.name).to eq("container")
  end
end