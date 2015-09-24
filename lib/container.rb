class Container
  def initialize (capacity, name = "container")
    raise ArgumentError.new("capacity must be greater than zero") unless capacity > 0
    @capacity = capacity
    @name = name
    @volume = 0
  end

  def capacity
    @capacity
  end

  def volume
    @volume
  end

  def weight
    @volume
  end

  def empty?
    @volume == 0
  end

  def name
    @name
  end

  def fill
    @volume = @capacity
  end

  def empty
    @volume = 0
  end

  def take (amount)
    if(amount < @volume)
      @volume -= amount
      amount 
    else
      @volume = 0
      @capacity
    end
  end

  def fill_from (container)
    @volume += container.take(@capacity - @volume)
  end

  def to_s
    @name + ": " + @volume.to_s + "/" + @capacity.to_s
  end
end