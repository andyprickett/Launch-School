def factorial_array(n)
  fact_array = []
  1.upto(n) do |i|
    fact_array << i
  end
  fact_array
end

def sum_square_difference(n)
  arr = factorial_array(n)
  (arr.reduce(:+)**2) - arr.reduce(0) { |sum, i| sum + i**2}
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
