require 'tty-prompt'
require 'colorize'

puts "Welcome to Car Spa"
puts "Please select one of the following options:"

# loop do
options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking"]
options.each {|option| puts option}
#     end
# end