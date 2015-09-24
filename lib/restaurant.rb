require "glass"

module Restaurant
  beer = Glass.new(10, "beer")
  puts beer.to_s
  beer.fill
  puts beer.empty
end
