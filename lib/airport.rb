class Airport

  DEFAULT_CAPACITY = 6

  def initialize
    @planes = []
  end

  def has_plane?
    !@planes.empty?
  end

  def land(plane)
    if plane_count < DEFAULT_CAPACITY
    @planes << plane
    else
      raise "Sorry the airport is full!"
    end
    plane_count
  end

  def take_off(plane)
    @planes.reject! {|frog| frog == plane}
  end

  def plane_count
    @planes.count
  end

end