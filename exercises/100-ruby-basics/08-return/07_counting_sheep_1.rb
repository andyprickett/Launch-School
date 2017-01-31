def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# This will print: 0 1 2 3 4 5 (on separte lines). The puts in the method
# will print the numbers from time, and the return value of the times
# method is the int it is called on (in this case 5). So, the method call
# will print this return value of 5.
