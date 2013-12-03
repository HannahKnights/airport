require 'weather'

class WeatherHolder
    include Weather
end 

describe Weather do

  let (:weather) {WeatherHolder.new}

  it "should sometimes be sunny and sometimes stormy" do
    weather.forecast.should satisfy{|result| ["sunny", "stormy"].include?(result)}
  end

end