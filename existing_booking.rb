class Booking
    attr_accessor :booking, :name

    def initialize(name)
        @name = name
        @booking = nil 
    end
end