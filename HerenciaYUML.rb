class Appointment
    attr_accessor :location, :purpose, :hour, :min

    def initialize(location, purpose ,hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end


end

class MonthlyAppointment < Appointment

    attr_accessor :day

    def initialize (location, purpose, hour, min, day)
        super(location, purpose, hour, day)
        @day = day
    end

    def self.day()
        day
    end
    
    def occurs_on?(day)
        self.day == day
    end

    def to_s
        puts "Reunion mensual en #{@location} sobre #{@purpose} el dia #{@day} a la(s) #{@hour}:#{@min}"
    end

end