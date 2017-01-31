nums_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odds_array = nums_array.select { |num| num.odd? }

puts odds_array
