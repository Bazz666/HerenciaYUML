class Appointment
    attr_accessor :location, :purpose, :hour, :min

    def initialize(location, purpose ,hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end


end