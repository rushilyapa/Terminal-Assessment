require_relative './packages.rb'
require_relative './make_booking.rb'
require_relative './existing_booking.rb'

require "colorize"
require "tty-prompt"

prompt = TTY::Prompt.new

# User Enter's their details
result = prompt.collect do
    key(:name).ask("Name?")
  
    key(:mobile).ask("Mobile?", convert: :int)
  
    key(:address) do
    key(:number).ask("Number?")
      key(:street).ask("Street?", required: true)
      key(:city).ask("City?")
    end
end
