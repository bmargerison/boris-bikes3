require_relative 'bike'

class DockingStation

    DEFAULT_CAPACITY = 20

    attr_reader :bike_dock
    attr_accessor :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @bike_dock = []
    end

    def docking_station
    end

    def release_bike
       fail 'No bikes available' if empty?
       @bike_dock.pop
    end

    def dock_bike(bike)
        fail 'Docking station full' if full?
        @bike_dock.push(bike)
        bike
    end

    private

    def full?
      @bike_dock.count >= @capacity ? true : false
    end

    def empty?
      @bike_dock.empty? ? true : false
    end

end


