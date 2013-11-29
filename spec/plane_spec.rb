require 'plane'

describe Plane do

  let (:plane) {Plane.new}

  it "should start on the runway at the airport" do
    expect(plane.in_flight?).to be_false
  end

  it "should be able to take off" do
    plane.take_off
    expect(plane.in_flight?).to be_true
  end

  it "should be able to land" do
    plane.take_off
    plane.land
    expect(plane.in_flight?).to be_false
  end


end