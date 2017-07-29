def string_to_integer(string)
  temp_array = []
  string.chars.each_with_index do |char, index|
    zeros = 10**(string.length - (index + 1))
    temp_array << (char.ord - 48) * zeros
  end
  temp_array.reduce(:+)
end

# OR (cleaner, easier!)
# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = ((10 * value) + digit) }
#   value
# end

HEX_TO_DIGIT = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| HEX_TO_DIGIT[char.upcase] }

  value = 0
  digits.reverse.each_with_index do |digit, index|
    value += (digit * (16**(index)))
  end
  value
end

# p string_to_integer('4321') # == 4321
# p string_to_integer('570') # == 570
# p string_to_integer('0') # == 0
p hexadecimal_to_integer('4D9f') == 19871
