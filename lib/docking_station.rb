require_relative 'bike'

class DockingStation

    # we can use attr_reader to read the @bike attribute
    attr_reader :bike

    def docking_station
    end

    def release_bike
       fail 'No bikes available' unless @bike
       @bike
    end

    def dock_bike(bike)
        # return the bike we dock
        # however, use instance variable to store the bike in the state of this instance
        @bike = bike
    end

end