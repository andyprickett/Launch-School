arr = [1, 3, 5, 7, 9, 11]

puts "Enter a number you hope to find in the array..."
number = gets.chomp.to_i

if arr.include?(number)
  puts "#{number} is included in the array."
else
  puts "No #{number} found in the array."
end