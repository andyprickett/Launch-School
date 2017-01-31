numbers = []

while numbers.size < 5 # while the size of the array is less than 5
  numbers.push(rand(100)) # push a random number in as an element
end

puts numbers
