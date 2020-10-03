require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require 'tty-prompt'
require 'colorize'


    puts "Welcome to Car Spa".colorize(:red)
    puts "Please select from one of the following"
    

    options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
    options.each {|option| puts option}
    
    user_select = gets.chomp.to_i
    until user_select == 4 
    
    
    
        case user_select
        when 1
            puts table
            options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
            options.each {|option| puts option}
            user_select = gets.chomp.to_i
        when 2
            puts "Please enter your name"
            user1_name = gets.chomp
            puts "Please enter your mobile number"
            user1_mobile = gets.chomp.to_i
            puts "PLease enter your address"
            user1_address = gets.chomp
            puts "Please enter the make of your car"
            user1_make = gets.chomp
            puts "Please enter the model of your car"
            user1_model = gets.chomp
            puts "Please enter what package you'd like (Silver, Gold or Platinum"
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
                puts "name = #{user1.name}"
                puts "Mobile number = 0#{user1.mobile}"
                puts "Address = #{user1.address}"
                puts "Car model = #{user1.model}"
                puts "Car make = #{user1.make}"
                puts "Selected Package = #{user1.package}"
            end
            options = ["1 - View Packages", "2 - Make Booking", "3 - View Existing Booking", "4 - Exit"]
            options.each {|option| puts option}
            user_select = gets.chomp.to_i
        when 4
            puts "Thanks for using our car wash"
            exit
            
        end
    end
