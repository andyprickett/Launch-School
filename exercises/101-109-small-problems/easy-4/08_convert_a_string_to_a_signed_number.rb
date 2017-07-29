DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}
# My Way
# def remove_sign!(string)
#   if string[0] == '-' || string[0] == '+'
#     string[1..-1]
#   else
#     string
#   end
# end

# def negative_sign?(string)
#   string[0] == '-'
# end

# def string_to_signed_integer(string)
#   unsigned_string = remove_sign!(string)

#   digits = unsigned_string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = ((10 * value) + digit) }
#   if negative_sign?(string)
#     value * -1
#   else
#     value
#   end
# end

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = ((10 * value) + digit) }
  value
end

def string_to_signed_integer(string)
  raw_string = ['+', '-'].include?(string[0]) ? string[1..-1] : string
  number = string_to_integer(raw_string)
  string[0] == '-' ? -number : number
end

p string_to_signed_integer('4321') # == 4321
p string_to_signed_integer('-570') # == -570
p string_to_signed_integer('+100') # == 100
