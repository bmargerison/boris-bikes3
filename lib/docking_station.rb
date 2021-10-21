require_relative 'bike'

class DockingStation

    DEFAULT_CAPACITY = 20

    # we can use attr_reader to read the @bike attribute
    attr_reader :bikes
    attr_reader :bike_dock

    def initialize
        @bike_dock = []
    end

    def docking_station
    end

    def release_bike
       fail 'No bikes available' if empty?
       @bike_dock.pop
    end

    def dock_bike(bike)
        # return the bike we dock
        # however, use instance variable to store the bike in the state of this instance
        fail 'Docking station full' if full?
        @bike_dock.push(bike)
        bike
    end

    private

    def full?
      @bike_dock.count >= DEFAULT_CAPACITY ? true : false
    end

    def empty?
      @bike_dock.empty? ? true : false
    end

end

