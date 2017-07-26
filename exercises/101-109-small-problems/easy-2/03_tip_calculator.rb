puts "What is the total bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip_amount = bill * (tip / 100)
total_amount = bill + tip_amount

printf("The tip is $%.2f.\n", tip_amount)
printf("The total is $%.2f.", total_amount)

