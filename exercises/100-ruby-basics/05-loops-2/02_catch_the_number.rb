loop do
  number = rand(100)
  puts number
    # add break with condition of number being between min and max
  break if number.between?(0, 10)
end
