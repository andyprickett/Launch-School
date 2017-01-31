puts ">> What is your age in years?"

years = gets.chomp.to_i

months = years * 12

puts "You are #{months} months old."

# a non-numeric input will result in a 0 for output, because to_i on a string
# returns a 0
