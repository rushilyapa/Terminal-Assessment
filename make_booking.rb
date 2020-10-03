require_relative './packages.rb'

require "colorize"

# User infomation
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