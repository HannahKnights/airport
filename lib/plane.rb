class Plane

  def initialize 
    grounded
  end

  def in_flight?
    @in_flight 
  end

  def take_off
    @in_flight = true
  end

  def land
    @in_flight = false
  end

  def grounded
    @in_flight = false
  end

end