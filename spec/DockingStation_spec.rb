require "docking_station"
describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to(:dock).with(1).argument}

  it "release a bike" do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  it "is docking" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "records a returned bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[-1]).to eq bike #we are assigning the new instance of bike to @bikes
  end

describe '#release_bike' do
  it "raises error when there is no bike" do
    expect{subject.release_bike}.to raise_error "No bike!"
  end
end

describe '#dock' do
  it "raises error when docking station is full" do
    20.times{ subject.dock(Bike.new)} # dock a bike first
    #subject.dock(Bike.new)
    expect{subject.dock(Bike.new)}.to raise_error "No space!"
  end
end

end
