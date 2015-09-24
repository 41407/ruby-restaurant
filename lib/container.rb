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

  def name
    @name
  end

  def fill
    @volume = @capacity
  end

  def fill_from (container)
    if @capacity - @volume > container.volume
      @volume += container.volume
    else
      @volume = @capacity
    end
    @volume
  end
end