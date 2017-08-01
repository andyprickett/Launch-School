def include?(array, value)
  array.count(value) >= 1
  # OR (this is what I was looking for...)
  # !!array.find_index(value) #(find_index returns an integer (truthy) or nil (falsey))
  # OR
  # array.each { |element| return true if value == element }
  # false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
