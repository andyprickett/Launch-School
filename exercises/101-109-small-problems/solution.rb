require 'pry'
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  result = ''
  loop do
    integer, digit = integer.divmod(10)
    result.prepend(DIGITS[digit])
    break if integer == 0
  end
  result
end

def signed_integer_to_string(number)
  clean_number = integer_to_string(number.abs)
  case number <=> 0
  when -1 then "-#{clean_number}"
  when +1 then "+#{clean_number}"
  else         clean_number
  end
end
=begin
  if integer < 0
    sign = '-'
  end
  string = integer_to_string(integer.abs)
  if sign == '-'
    string.prepend('-')
  elsif integer > 0 
    string.prepend('+')
  else
    string
  end
end
=end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'
