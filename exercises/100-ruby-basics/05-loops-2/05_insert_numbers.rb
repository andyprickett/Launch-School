numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  # add user input to array 
  numbers.push(input)
  # leave loop if array contains 5 elements
  break if numbers.size == 5
end
p numbers
