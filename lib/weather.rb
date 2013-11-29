class Weather
  
  def initialize
    weather
  end

  def weather
    weather_frequency = []
    weather_frequency.fill("sunny", 0, 50)
    weather_frequency.fill("stormy", 0, 1)
  end

  def forecast
    weather.sample
  end
  
  def count
    weather.count
  end

  def count_stormy
  weather_stormy = []
  weather_stormy = weather.reject {|s| s == "sunny"}
  weather_stormy.count
  end

end
