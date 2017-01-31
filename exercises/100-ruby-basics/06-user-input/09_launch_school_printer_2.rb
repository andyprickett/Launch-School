choice = nil

loop do
  puts ">> How many lines do you want to print? " /
       "(Enter 3 or more...Q to quit):"
  choice = gets.chomp
  break if choice.downcase == 'q'
  choice = choice.to_i
  if choice < 3
    puts ">> That's not enough lines."
  else
    while choice > 0
      puts "Launch School is the best!"
      choice -= 1
    end
  end
end
