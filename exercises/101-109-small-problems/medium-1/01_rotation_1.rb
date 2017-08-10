def rotate_array(array)
  # output_array = Array.new(array.size, nil)
  # array.each_with_index do |element, index|
  #   output_array[index - 1] = element
  # end
  # output_array
  # OR
  array[1..-1] + [array[0]]
end

def rotate_string(string)
  string_array = string.chars
  rotate_array(string_array).join('')
end

def rotate_integer(number)
  string = number.to_s
  string_array = string.chars
  rotate_array(string_array).join('').to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x #== [1, 2, 3, 4]                 # => true

p rotate_string('heavens')
p rotate_integer(12345)

