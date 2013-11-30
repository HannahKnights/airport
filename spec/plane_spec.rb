require 'plane'

describe Plane do

  let (:plane) {Plane.new}

  it "has a flying status when created" do
    expect(plane.in_flight?).to eq("Flying")
  end

  it "has a flying status when in the air" do
    plane.take_off
    expect(plane.in_flight?).to eq("Flying")
  end

  it "can take off" do
    plane.take_off
    expect(plane.in_flight?).to eq("Flying")
  end

  # it "should start on the runway of the airport" do
  #   expect(plane.in_flight?).to be_false
  # end

  # it "should be able to take off" do
  #   plane.take_off
  #   expect(plane.in_flight?).to be_true
  # end

  # it "should be able to land" do
  #   plane.take_off
  #   plane.land
  #   expect(plane.in_flight?).to be_false
  # end

  # it "should be able to land when it is sunny" do
  #   plane.take_off
  #   sunny = double("sunny")
  #   expect(plane.can_I_land).to eq("Yes")
  # end

end