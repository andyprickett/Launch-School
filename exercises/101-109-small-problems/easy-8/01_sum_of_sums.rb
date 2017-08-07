def sum_of_sums(numbers)
  reduce_array = []
  super_sum = 0
  numbers.each do |number|
    reduce_array << number
    super_sum += reduce_array.reduce(:+)
  end
  # OR
  # 1.upto(numbers.size) do |count|
  #   super_sum += numbers.slice(0, count).reduce(:+)
  # end
  super_sum
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35
