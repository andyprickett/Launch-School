puts "Printing all odd numbers from 1 to 99:"

# 99.times do |n|
#   if (n + 1).odd?
#     puts n + 1
#   end
# end

# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# 1.upto(99) { |i| puts i if i.odd? }

puts (1..99).to_a.select { |n| n.odd? }
