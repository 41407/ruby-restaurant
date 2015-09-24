class Container
  def initialize (volume, name = "container")
    raise ArgumentError.new("Volume must be greater than zero") unless volume > 0
    @volume = volume
    @name = name
    @contained_volume = 0
  end

  def volume
    @volume
  end

  def name
    @name
  end
end