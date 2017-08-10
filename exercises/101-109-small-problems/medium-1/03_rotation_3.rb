# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# def rotate_rightmost_digits(number, digits)
#   number_array = number.to_s.chars
#   rotated = rotate_array(number_array.slice!(-digits..-1))
#   (number_array + rotated).join('').to_i
#   # OR
#   # number_array[-digits..-1] = rotate_array(all_digits[-n..-1])
#   # number_array.join.to_i
# end

# def max_rotation(number)
#   digits = number.to_s.chars.size
#   digits.downto(2) do |i|
#     number = rotate_rightmost_digits(number, i)
#   end
#   number
# end

def max_rotation(number)
  digits = number.to_s.size
  number_array = number.to_s.chars
  digits.downto(2) do |i|
    sliced = number_array.slice!(-i..-1)
    rotated = sliced[1..-1] + [sliced[0]]
    number_array = number_array + rotated
  end
  number_array.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
