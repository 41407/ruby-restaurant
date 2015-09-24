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
    @volume -= amount
  end

  def fill_from (container)
    if @capacity - @volume > container.volume
      @volume += container.volume
      container.empty
    else
      container.take(@capacity - @volume)
      @volume = @capacity
    end
    @volume
  end

  def to_s
    @name + ": " + @volume.to_s + "/" + @capacity.to_s
  end
end