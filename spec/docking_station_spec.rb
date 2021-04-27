require 'docking_station'

describe DockingStation do
  #it { is_expected.to respond_to :release_bike }

  #it 'releases working bikes' do
    #bike = subject.release_bike
  #  expect(bike).to be_working
  #end

  #describe '#release_bike' do
    #it 'releases a bike' do
      #bike = Bike.new
      #subject.dock(bike)
      # we want to release the bike we docked
      #expect(subject.release_bike).to eq bike
    #end
  #end

  it 'docking station responds to dock' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  #it 'returns docked bikes' do
  #  bike = Bike.new
  #  expect(subject.dock(bike)).to eq bike
#  end

  describe '#dock' do
    it 'raises an error when trying to return bike but dock is full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "Docking station full"
    end
  end
end
