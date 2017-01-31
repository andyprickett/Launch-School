numbers_1 = { odds: [1, 3, 5],
              evens: [2, 4, 6],
            }

numbers_2 = { odds: [7, 9, 11],
              primes: [13, 17, 23]
            }

puts "First we merge these two hashes into a new hash:"
puts "numbers_1 before"
p numbers_1
puts "numbers_2 before"
p numbers_2
numbers = numbers_1.merge(numbers_2)
puts "New hash 'numbers' after merge...(some overwritten, some new)"
p numbers
puts "numbers_1 after"
p numbers_1
puts "numbers_2 after"
p numbers_2

puts "Reset the original hashes..."

numbers_1 = { odds: [1, 3, 5],
              evens: [2, 4, 6],
            }

numbers_2 = { odds: [7, 9, 11],
              primes: [13, 17, 23]
            }

puts "Now we merge! them"
puts "numbers 1 before"
p numbers_1
puts "numbers 2 before"
p numbers_2
numbers_1.merge!(numbers_2)
puts "numbers_1 after merge! (mutated)"
p numbers_1
puts "numbers_2 after merge!"
p numbers_2
