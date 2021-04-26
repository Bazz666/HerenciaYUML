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

class DailyAppontment < Appointment

    def occurs_on?(hour, min)
        self.hour == hour && self.min ==min
    end

    def to_s
        puts "La reunión diaria  es en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}"
    end
end

class OneTimeAppointment < Appointment

    attr_accessor :day, :month, :year
    def initialize(location,purpose,hour,min,day,month,year)
        super(location,purpose,hour,min)

        @day = day
        @month = month
        @year = year
    end
    
    def occurs_on?(day, month, year)
        self.day == day && self.month == month && self.year == year
    end

    def to_s
        puts "\n Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}"
    end
end
