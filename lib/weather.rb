module Weather

  def forecast
    Array(1..50).sample == 1 ? "stormy" : "sunny"
  end
  
end
