require "container"

describe Container do
  it "should return an empty container with capacity and name" do
  	beer = Container.new(1, "beer")
  	expect(beer.capacity).to eq(1)
  	expect(beer.name).to eq("beer")
  end

  it "cannot be initialized with negative capacity" do
  	expect{ Container.new(-1, "beer") }.to raise_error ArgumentError
  end

  it "with empty name returns generic name" do
  	generic = Container.new(1)
  	expect(generic.name).to eq("container")
  end

  describe "can be filled" do
    before :each do
	    @container = Container.new(10, "pitcher")
	  end
	  
    it "from infinite source" do
	    expect(@container.fill).to eq(10)
	  end

    it "and returns correct weight" do
      @container.fill
      expect(@container.weight). to eq(10)
    end

  	describe "from another container" do
  	  it "fully" do
  	  	another = Container.new(11)
  	  	another.fill
  	  	expect(@container.fill_from(another)).to eq(10)
  	  end

        it "partly" do
        	another = Container.new(5)
        	another.fill
        	expect(@container.fill_from(another)).to eq(5)
        end
  	end
  end

  describe "can be emptied" do
  	before :each do
  	  @container = Container.new(10, "pitcher")
  	  @container.fill
  	  @glass = Container.new(1, "glass")
  	  @bathtub = Container.new(100, "bathtub")
  	end

  	it "to a smaller container" do
  	  @glass.fill_from @container
  	  expect(@container.volume).to eq(9)
  	end

  	it "to a larger container" do
  	  @bathtub.fill_from @container
  	  expect(@container).to be_empty
  	end

    it "and returns correct weight" do
      @bathtub.empty
      expect(@bathtub.weight).to eq(0)
    end
  end
end
