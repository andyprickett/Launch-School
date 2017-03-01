puts "Please enter a starting year..."
start_year = gets.chomp.to_i
puts "Please enter an ending year..."
end_year = gets.chomp.to_i

puts "Here's all the leap years..."

year = start_year

while year <= end_year
  if (year % 4 == 0)
    if (year % 100 != 0) || (year % 400 == 0)
      puts 'Leap Year ' + year.to_s 
    end   
  end
  year += 1 
end
puts "That's all folks!"
