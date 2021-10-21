require_relative 'bike'

class DockingStation

    # we can use attr_reader to read the @bike attribute
    attr_reader :bikes
    attr_reader :bike_dock

    def initialize
        @bike_dock = []
    end

    def docking_station
    end

    def release_bike
       fail 'No bikes available' unless @bike_dock.any?
       @bike_dock.pop
    end

    def dock_bike(bike)
        # return the bike we dock
        # however, use instance variable to store the bike in the state of this instance
        fail 'Docking station full' if @bike_dock.count >= 20
        @bike_dock.push(bike)
        bike
    end

end

