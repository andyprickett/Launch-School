puts "Please enter your first name..."
first_name = gets.chomp
puts "Please enter your last name..."
last_name = gets.chomp
puts "Hello " + first_name + " " + last_name + "! Nice to meet you!"

puts "Here is your name 10 times: "
10.times do |n|
  puts first_name + " " + last_name
end
