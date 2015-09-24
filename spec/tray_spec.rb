require "tray"
require "container"

describe Tray do
  it "should return an empty tray with capacity" do
	  tray = Tray.new (5)
	  expect(tray.capacity).to eq(5)
	end

  describe "with enough space" do
    before :each do
      c1 = Container.new (0.5)
      c1.fill
      c2 = Container.new (1)
      c2.fill
      c3 = Container.new (2)
      c3.fill
      tray = Tray.new (3)
    end

    it "can hold containers" do
      tray.add (c1)
      expect(tray.weight).to eq(c1.weight)
    end

    it "can add containers" do
      tray.add (c1)
      tray.add(c2)
      expect(tray.weight).to eq(c1.weight + c2.weight)
    end
  end
end
