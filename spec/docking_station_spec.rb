require "docking_station.rb"

describe DockingStation do
  it 'releases a bike' do
    expect(subject).to respond_to (:release_bike) 
  end

  it 'releases working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'docks something' do
    bike = Bike.new
    # Dock the bike at a docking station
    expect(subject.dock_bike(bike)).to eq bike
  end

  # bike method to call on the status of the bike
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    # return the bike we just docked
    expect(subject.bike).to eq bike
  end

  it 'not to release bike' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end

end