def multiple?(number, divisor)
  number % divisor == 0
end

# def multisum(max_value, mult1, mult2)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, mult1) || multiple?(number, mult2)
#       sum += number
#     end
#   end
#   sum
# end

def multisum(max_number, mult1, mult2)
  (1..max_number).reduce(0) do |sum, number|
    multiple?(number, mult1) || multiple?(number, mult2) ? sum + number : sum
  end
end
 
p multisum(3, 3, 5) == 3
p multisum(5, 3, 5) == 8
p multisum(10, 3, 5) == 33
p multisum(1000, 3, 5) == 234168
p multisum(20, 3, 5) == 98
