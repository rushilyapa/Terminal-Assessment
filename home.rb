puts "Welcome to Car Spa
Please select one of the following options:"

loop do
    options = ["1 - Make Booking", "2 - View Existing Booking", "3 - View Packages"]
    options.each {|option| puts option}

  user_input = gets.chomp.to_i
  case user_input
  when 1
    puts "Current balance is $#{balance}"
  when 2
    puts "Your current balance is $#{balance}\nHow much would you like to withdraw?"
    withdrawal_value = gets.chomp.to_i

    if withdrawal_value > balance
      puts "Error: you're broke! Time to fix your life"
    else
    balance -= withdrawal_value
  end