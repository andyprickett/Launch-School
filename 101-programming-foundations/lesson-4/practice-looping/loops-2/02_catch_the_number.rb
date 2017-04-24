loop do
  number = rand(100)
  puts number
  break if (0..10).include?(number)
  # break if number.between?(0, 10)
end
