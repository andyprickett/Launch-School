SQMETERS_TO_SQFEET = 10.7639
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.03

# puts "What is the length of the room (in meters)?"
puts "What is the length of the room (in feet)?"
length = gets.chomp.to_f

# puts "What is the width of the room (in meters)?"
puts "What is the width of the room (in feet)?"
width = gets.chomp.to_f

sq_feet = length * width #).round(2)
sq_inches = sq_feet * SQFEET_TO_SQINCHES #).round(2)
sq_centimeters = sq_feet * SQFEET_TO_SQCENTIMETERS #).round(2)

printf("The area of the room is %.2f square feet.\n", sq_feet)
printf("(%.2f square inches, %.2f square centimeters)\n", sq_inches, sq_centimeters)
