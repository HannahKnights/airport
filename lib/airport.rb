require_relative "weather"

class Airport

  include Weather

  DEFAULT_CAPACITY = 6

  def initialize
    @planes = []
  end

  def has_plane?
    !@planes.empty?
  end

  def land(plane)
    if sunny? && plane_count < DEFAULT_CAPACITY
    @planes << plane
    else
      raise "Sorry the plane cannot land!"
    end
    plane_count
  end

  def take_off(plane)
    if sunny?
      @planes.reject! {|frog| frog == plane}
    else
      raise "Sorry the plane cannot land!"
    end
    plane_count
  end

  def plane_count
    @planes.count
  end

  def sunny?
    forecast == "sunny"
  end

end