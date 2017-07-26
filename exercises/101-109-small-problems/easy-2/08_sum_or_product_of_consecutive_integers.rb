def compute_sum(number)
  (1..number).reduce(:+)
end

def compute_product(number)
  (1..number).reduce(:*)
end

number = ''
loop do
  puts "Please enter an integer greater than 0: "
  number = gets.chomp.to_i
  break if number > 0
  puts "Yo, that isn't something I can use."
end

operation = ''
loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product:"
  operation = gets.chomp
  break if %w(s p).include?(operation)
  puts "Yo, only two options here, try again."
end

if operation == 's'
  result = compute_sum(number)
  operation = 'sum'
else
  result = compute_product(number)
  operation = 'product'
end

puts "The #{operation} of the integers between 1 and #{number} is #{result}."


