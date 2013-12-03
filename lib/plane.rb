class Plane

  def initialize 
    flying
  end

  def in_flight?
    @in_flight ? "Flying" : "Landed"
  end

  def take_off
    @in_flight = true
  end

  def land
    @in_flight = false
  end

  def flying
    @in_flight = true
  end

end