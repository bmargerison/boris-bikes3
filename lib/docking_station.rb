require_relative 'bike'

class DockingStation

    def docking_station
    end

    def release_bike
        Bike.new 
    end

    def dock_bike(bike)
        # return the bike we dock
        # however, use instance variable to store the bike in the state of this instance
        @bike = bike
    end
    # instead of...
         #def bike
             #@bike
        #end
    # we can use attr_reader to read the @bike attribute
    attr_reader :bike

end