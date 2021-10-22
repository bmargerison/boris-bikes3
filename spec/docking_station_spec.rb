require "docking_station.rb"

describe DockingStation do
  
  it 'releases a bike' do
    expect(subject).to respond_to (:release_bike) 
  end

  it 'releases working bike' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'does not release broken bike' do
    bike = Bike.new
    bike.report_bike
    subject.dock_bike(bike)
    expect{ subject.release_bike }.to raise_error ('No bikes available')
  end

  it 'docks something' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect { docking_station.dock_bike(bike) }.to change{docking_station.bike_dock}.from([]).to([bike])
  end

  it 'returns docked bikes' do
    bike = Bike.new
    docking_station = DockingStation.new
    subject.dock_bike(bike)
    expect(docking_station.dock_bike(bike)).to eq bike 
  end

  it 'not to release bike' do
    expect{subject.release_bike}.to raise_error 'No bikes available'
  end

  it 'raises an error when full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike Bike.new }
    expect { subject.dock_bike Bike.new }.to raise_error 'Docking station full'
  end

  it 'allows user to declare capacity' do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq 30
  end

  it 'defaults to 20 when no capacity declared' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  
end
