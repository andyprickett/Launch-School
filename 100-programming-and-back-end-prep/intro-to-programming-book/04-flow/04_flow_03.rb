puts "Please enter a number between 0 and 100"

number = gets.chomp.to_i

if number >= 0
  if number <= 50
    puts "Your number is between 0 and 50"
  elsif number <= 100
    puts "Your number is between 51 and 100"
  else
    puts "Your number is above 100, try again!"
  end
else
  puts "Your number is negative, try again!"
end