require_relative 'bike'

class DockingStation

attr_reader :bikes

#def initialize (bike)
  #@bikes = bike # atore array of 20 elements
#end

  def dock(bike)
    fail 'No space!' unless !@bikes
    @bikes = bike #= @bikes.push(bike)
  end

  def release_bike
    fail 'No bike!' unless @bikes
    @bikes
  end

end
