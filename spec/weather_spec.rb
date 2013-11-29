require 'weather'

describe Weather do

  let (:weather) {Weather.new}

  it "should sometimes be sunny and sometimes stormy" do
    weather.forecast.should satisfy{|result| ["sunny", "stormy"].include?(result)}
  end


  it "should be stormy 1 day in every 3" do
    expect(weather.count).to eq(50)
    expect(weather.count_stormy).to eq(1)
  end

end