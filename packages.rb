require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require 'terminal-table'
require 'colorize'

rows = []
rows << ['Silver - Wash', 45 ]
rows << ['Gold', 60 ]
rows << ['Platinum', 100 ]
table = Terminal::Table.new :title => "Packages", :headings => ['Item', 'Price $'], :rows => rows

puts table

prompt = TTY::Prompt.new

prompt.yes?("If you found a package that suits you, would you like to make a booking?")
