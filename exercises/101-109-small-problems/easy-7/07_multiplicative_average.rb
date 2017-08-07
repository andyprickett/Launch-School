def show_multiplicative_average(array)
  result = (array.reduce(:*) / array.size.to_f)
  # OR
  # product = 1.to_f # make sure things are float from the get-go
  # array.each { |number| product *= number }
  # result = product / array.size
  puts format("The result is %.3f", result)
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
