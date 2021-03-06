require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}
  it "check bike working?" do
    expect(Bike.new.working?).to eq true
  end

describe 'initialization' do
  it "has a variable capacity" do
    docking_station = DockingStation.new(5)
    expect{ 5.times { subject.dock(bike) } }.to raise_error
end



  it "bike docked" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  it "raises error if bike already docked" do
    bike = Bike.new
    subject.dock(bike)
    expect{ capacity.times { subject.dock(bike) } }.to raise_error
  end

describe "#release_bike" do
  it " releases a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
end

  it "raise error if no bikes are docked" do
    # bike = nil
    # subject.dock(bike)
    expect { subject.release_bike }.to raise_error
  end

end
end
