require_relative './packages.rb'
require_relative './make_booking.rb'

require 'colorize'
require 'terminal-table'

# Welcome Message

    puts "WELCOME TO".colorize(:red)
    puts "▄█▄    ██   █▄▄▄▄        ▄▄▄▄▄   █ ▄▄  ██   
    █▀ ▀▄  █ █  █  ▄▀       █     ▀▄ █   █ █ █  
    █   ▀  █▄▄█ █▀▀▌      ▄  ▀▀▀▀▄   █▀▀▀  █▄▄█ 
    █▄  ▄▀ █  █ █  █       ▀▄▄▄▄▀    █     █  █ 
    ▀███▀     █   █                   █       █ 
             █   ▀                     ▀     █  
            ▀                               ▀   ".colorize(:red)
    puts "Book Your Next Wash in under 60 seconds!".colorize(:blue) 
    puts "--------------------------------------------------------------------------"
    puts "Please select from one of the following:"
    
# Menu Selection

    #loop do
    options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
    options.each {|option| puts option}
    #end
    user_select = gets.chomp.to_i
    until user_select == 4 

        case user_select
        # Display's the car wash packages
        when 1
            puts table
            options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
            options.each {|option| puts option}
            user_select = gets.chomp.to_i
        # User enter's their details
        when 2
            puts "Please enter your name"
            user1_name = gets.chomp
            puts "Please enter your mobile number"
            user1_mobile = gets.chomp.to_i
            puts "Please enter your address"
            user1_address = gets.chomp
            puts "Please enter the make of your car"
            user1_make = gets.chomp
            puts "Please enter the model of your car"
            user1_model = gets.chomp
            puts "Please enter what package you'd like (Silver, Gold or Platinum)"
            user1_package = gets.chomp.downcase
            until user1_package == "silver" or user1_package == "gold" or user1_package == "platinum"
                puts "Please type Silver, Gold, or Platinum"
                user1_package = gets.chomp.downcase
            end
            user1 = Booking.new(@name = user1_name, @mobile = user1_mobile, @address = user1_address, @make = user1_make, @model = user1_model, @package = user1_package)
            options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
            options.each {|option| puts option}
            user_select = gets.chomp.to_i
        when 3
            if user1 == nil
                puts "No bookings have been made, please make a booking in the main selection".colorize(:red)
            else 
                    rows = []
                    rows << ["Name = #{user1.name}"]
                    rows << ["Mobile Number = 0#{user1.mobile}"]
                    rows << ["Car Make = #{user1.make}"]
                    rows << ["Car Model = #{user1.model}"]
                    rows << ["Selected Package = #{user1.package}"]
                    table = Terminal::Table.new :title => "Booking", :rows => rows
                    
                    puts table
            end
            options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
            options.each {|option| puts option}
            user_select = gets.chomp.to_i
        when 4
            puts "Thanks for using Car Spa"
            exit
        end
    end
