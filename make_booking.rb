require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require 'tty-prompt'
require 'colorize'

result = prompt.collect do
    key(:name).ask("Name?")
  
    key(:mobile).ask("Mobile?", convert: :int)
  
    key(:address) do
      key(:number).ask("Street Number?")
      key(:street name).ask("Street?", required: true)
      key(:suburb).ask("Suburb?")
    end
end
