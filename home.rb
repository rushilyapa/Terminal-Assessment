require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require 'tty-prompt'
require 'colorize'


    puts "Welcome to Car Spa".colorize(:red)
    puts "Please select from one of the following"
    
loop do
options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking"]
options.each {|option| puts option}
break
end

case options
if 1
    puts table
else
    puts "Invalid Option"
end
