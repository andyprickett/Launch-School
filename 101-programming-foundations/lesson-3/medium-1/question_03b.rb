def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    # if number is evenly divided by dividend (resulting in an integer),
    # add that quotient to the array
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  # the while loop return nil, so in order to return the data we created we
  # must just place it as the last line of the method
  divisors
end

p factors(9)
p factors(0)
p factors(-4)
