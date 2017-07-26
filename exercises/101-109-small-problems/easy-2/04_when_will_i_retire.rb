print "What age do you turn this year? "
age = gets.chomp.to_i

print "What age are you gonna retire? "
retire_age = gets.chomp.to_i

years_left = retire_age - age
t = Time.new #.now.year
retire_year = t.year + years_left

puts "It's #{t.year}. You will retire in #{retire_year}."
puts "You have only #{years_left} of work to go!"
