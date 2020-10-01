require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require 'tty-prompt'
require 'colorize'


    puts "Welcome to Car Spa".colorize(:red)
    prompt = TTY::Prompt.new.selection("Please select one of the following options:",  cycle: true, marker: '>', echo: false) do |menu|
       
        menu.choice('Packages', 1)
        menu.choice('Make booking', 2)
        menu.choice('View existing booking', 3)
