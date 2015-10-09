

class Tray

	def initialize(capacity)
		@capacity =capacity
		@weight = 0
	end

	def capacity
		@capacity
	end
	
	def weight
		@weight
	end


	def add(container)
		@weight = (@weight += container.weight).round(2)
	end

end