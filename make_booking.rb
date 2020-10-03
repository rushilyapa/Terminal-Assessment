require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require "colorize"
require "tty-prompt"

prompt = TTY::Prompt.new

# User Enter's their details
class Booking
    # attr_reader :name, :mobile, :address, :make, :model
    attr_accessor :name, :mobile, :address, :make, :model, :package
    
    def initialize(name, mobile, address, make, model, package)
        @name = name
        @mobile = mobile
        @address = address
        @make = make
        @model = model
        @package = package
    end
end