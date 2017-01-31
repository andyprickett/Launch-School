number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  # i want to see this number
  puts number_a
  number_b += rand(2)
  # i want to see this number, too
  puts number_b
  puts "---"
  # skip to next iteration unless one of them has incremented to 5
  next unless (number_a == 5) || (number_b == 5)
  # print success messages
  puts("5 was reached!")
  puts("Number A: #{number_a}, Number B: #{number_b}")
  # we are finally done here
  break
end
