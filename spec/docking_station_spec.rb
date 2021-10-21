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
    docking_station = DockingStation.new
    expect { docking_station.dock_bike(bike) }.to change{docking_station.bike_dock}.from([]).to([bike])
  end

  # bike method to call on the status of the bike
  it 'returns docked bikes' do
    bike = Bike.new
    docking_station = DockingStation.new
    subject.dock_bike(bike)
    # return the bike we just docked
    expect(docking_station.dock_bike(bike)).to eq bike 
  end

  it 'not to release bike' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end

  it 'raises an error when full' do
    20.times { subject.dock_bike Bike.new }
    expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
  end

end