DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  string = ''
  loop do
    integer, remainder = integer.divmod(10)
    string.prepend(DIGITS[remainder])
    break if integer == 0
  end
  string
end

def signed_integer_to_string(integer)
  raw_number = integer < 0 ? integer * -1 : integer
  integer_string = integer_to_string(raw_number)

  # if integer > 0
  #   integer_string.prepend('+')
  # elsif integer < 0
  #   integer_string.prepend('-')
  # else
  #   integer_string
  # end
  case integer <=> 0
  when -1 then "-#{integer_string}"
  when +1 then "+#{integer_string}"
  else         integer_string
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
