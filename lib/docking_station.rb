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
      good_bikes = @bike_dock.select { |bike| bike.broken_bike == false }
      fail 'No bikes available' if good_bikes.empty? 
      @bike_dock.each_with_index do |bike, i|
          if bike.broken_bike == false
            bike_dock.delete[i]
            break
          end
      end
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
      @bike_dock.length == 0 ? true : false
    end

end


