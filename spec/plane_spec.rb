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

  it "changes it's status to flying after taking off" do
    plane.land
    expect(plane.in_flight?).to eq("Landed")
    plane.take_off
    expect(plane.in_flight?).to eq("Flying")
  end

end