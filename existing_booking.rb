if existing.booking
    clear
    cat.booking.display_booking(cat, hotel)
    back_main_menu
else
    clear
    welcome
    puts " Ooops, sorry, you don't have a booking yet!"
    end