require_relative 'bike'

class DockingStation

attr_reader :bike

  def dock(bike)
    fail 'No space!' unless !@bike
    @bike = bike
  end

  def release_bike
    fail 'No bike!' unless @bike
    @bike
  end

end
