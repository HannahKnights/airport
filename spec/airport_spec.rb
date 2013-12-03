require 'airport'

describe Airport do

  let (:airport) {Airport.new}

  let (:plane) {double :plane}

  context "taking off and landing" do

    it "a plane can land" do
      airport.land(plane)
      expect(airport).to have_plane
    end

    it 'a plane can take off' do
      airport.take_off(plane)
      expect(airport).not_to have_plane
    end

  end

  context "traffic control" do
    
    it 'a plane cannot land if the airport is full' do
    6.times{airport.land(plane)}
    expect(lambda {airport.land(plane)}).to raise_error("Sorry the airport is full!")
    end
  
  end

  context "weather conditions" do
  
    # it 'a plane cannot take off when there is a storm brewing' do
    # end
      
    # it 'a plane cannot land in the middle of a storm' do
    # end
   
  end 


end