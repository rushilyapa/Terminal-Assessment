require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require 'tty-prompt'
prompt = TTY::Prompt.new
require 'colorize'


    puts "Welcome to Car Spa".colorize(:red)
    selection("Please select one of the following options:",  cycle: true, marker: '>', echo: false) do |menu|
        