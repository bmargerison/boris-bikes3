class Bike
    attr_reader :broken_bike

    def initialize
        @broken_bike = false
    end

    def working?
        true
    end

    def report_bike
        @broken_bike = true
    end

end