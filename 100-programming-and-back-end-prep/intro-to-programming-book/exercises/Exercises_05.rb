nums_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 1
nums_array.each { |num| puts num }

#2
nums_array.each { |num| puts num if num > 5 }

#3

odds_array = nums_array.select { |num| num.odd? }

puts odds_array

#4

nums_array.push(11)

p nums_array

nums_array.unshift(0)

p nums_array

#5

nums_array.pop
nums_array.push(3)

p nums_array
