require "docking_station.rb"

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bike' do
    bike = subject.release_bike
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

end