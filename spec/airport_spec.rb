require 'airport_challenge.rb'
describe AirportController do
  it 'responds to take_off or not? method' do
    expect(AirportController.new).to respond_to('takeoff_planes')
  end

  it 'checks the method airport' do
    plane = AirportController.new
    subject.airport(plane)
    expect(subject.planes).to include plane
  end

  describe '#takeoff_planes' do
    it 'shows no planes when there is no planes at the airport' do
      plane = AirportController.new
      expect { subject.takeoff_planes(plane) }.to eq plane
    end
  end

  it 'stubs the weather constant' do
    stub_const("AirportController::WEATHER", 2)
    AirportController::WEATHER.should eq(2)
  end
  
  it 'checks default capacity' do
    plane = AirportController.new
    AirportController::DEFAULT_CAPACITY.times(subject.airport(plane))
  end
  
end