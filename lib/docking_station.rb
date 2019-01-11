require_relative 'bike'

class DockingStation

attr_reader :bikes

def initialize
  @bikes = []
end

  def dock(bike)
    fail 'No space!' if full?
    @bikes << bike
    return bike
  end

  def release_bike
    fail 'No bike!' if empty?
    @bikes.pop
  end

  private
    def full?
      @bikes.count >= 20
    end

    def empty?
      @bikes.count == 0
    end

end
