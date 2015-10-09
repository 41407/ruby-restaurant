require "container"

class Glass < Container

	def initialize(capacity=0, weight=0, name="")
		raise ArgumentError.new("weight must be greater than zero") unless weight >= 0
		super(capacity, name)
		@weight = weight
	end

	def weight
		@weight
	end

	def fill
		@weight = (@weight += @capacity).round(2)
	end	

end