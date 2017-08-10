def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  number_array = number.to_s.chars
  rotated = rotate_array(number_array.slice!(-digits..-1))
  (number_array + rotated).join('').to_i
  # OR
  # number_array[-digits..-1] = rotate_array(all_digits[-n..-1])
  # number_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
