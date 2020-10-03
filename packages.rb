require_relative './make_booking.rb'

require 'terminal-table'
require 'colorize'
require "tty-prompt"

# Packages in a Tablet format

def table
rows = []
rows << ['Silver - Basic Wash Only', 35 ]
rows << ['Gold - Complete Wash and Vacuum', 55 ]
rows << ['Platinum - Complete Wash, Vacuum and Hand Polish', 100 ]
table = Terminal::Table.new :title => "Packages", :headings => ['Item', 'Price $'], :rows => rows

puts table

prompt = TTY::Prompt.new

prompt.yes?("If you found a package that suits you, would you like to make a booking?")
end
