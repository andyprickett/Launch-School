odd_numbers = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]

puts "First 10 odd numbers..."

odd_numbers.each_with_index {|num, ind|
  puts "#{ind + 1}: #{num}"
}