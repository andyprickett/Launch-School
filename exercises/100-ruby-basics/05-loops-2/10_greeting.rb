def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0 # while it's true that the counter is > 0
  # run the greeting method
  greeting
  # decrement the counter variable
  number_of_greetings -= 1
end
