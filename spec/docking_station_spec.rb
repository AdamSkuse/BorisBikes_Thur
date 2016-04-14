load 'docking_station.rb'
load 'bike.rb'

  describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it "adds a new bike" do
    bike = Bike.new
    subject.dock(bike)
  end

  it "accepts a bike" do
    bike = Bike.new
    tracker = subject.bikes.length
    subject.dock(bike)
    expect(subject.bikes.length).to eq (tracker + 1)
  end

  it "raises error when there are no bikes left and there is a request to release bike" do
    subject.bikes = []
    expect {bike = subject.release_bike}.to raise_error("No bikes to release")
  end

  it "raises an error when trying to release a broken bike" do
    bike = Bike.new
    bike.report_broken
    subject.dock(bike)
    expect {subject.release_bike}.to raise_error("Can not release broken bike")
  end

  it "raises error when the bike rack is at overcapacity" do
    bike = Bike.new
    expect {(DockingStation::DEFAULT_CAPACITY+1).times {subject.dock(bike)}}.to raise_error("Already at capacity")
  end

  it {
    station = DockingStation.new(30)
    expect(station.capacity).to eq 30
  }

  it "defaults to capacity 20 when no arg is passed during initialization" do
  station = DockingStation.new
  expect(station.capacity).to eq 20
  end

end
