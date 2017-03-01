puts "What year were you born?"
year_born = gets.chomp.to_i

puts "What month? (the number, please.)"
month_born = gets.chomp.to_i

puts "What day? (the number, please.)"
day_born = gets.chomp.to_i

dob = Time.new(year_born, month_born, day_born)
now = Time.new

year_day_of_birth = dob.yday
year_day_of_now = now.yday

year_now = now.year
years_old = year_now - year_born

if year_day_of_now < year_day_of_birth
  years_old -= 1
end

puts "You are currently #{years_old} years old!"
years_old.times do 
  puts "SPANK!"
end

# OR...
=begin
age = 1

while Time.local(year_born + age, month_born, day_born) <= now
  puts "SPANK!"
  age += 1
end
=end
