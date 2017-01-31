number_of_lines = nil

loop do
  puts ">> How many lines do you want to print? (Enter 3 or more...)"
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts "Launch School is the best!"
  number_of_lines -= 1
end
