require_relative 'bike'

class DockingStation

attr_reader :bike

  def release_bike
    fail 'No bike!' unless @bike
    @bike
    #p @bike
  end

  def dock(bike)
    @bike = bike
  end

end

#bike = Bike.new
#station = DockingStation.new

#station.dock(bike)
#station.release_bike
