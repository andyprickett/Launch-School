def featured(number)
  loop do
    number += 1
    break if (number % 7 == 0) && (number % 10).odd?
  end

  number_of_digits = number.to_s.size

  while number_of_digits < 11
    # return number if (number % 10).odd? && ## don't need to check for odd!!
    return number if 
                     (number.to_s.chars == number.to_s.chars.uniq)
    # number += 7 
    number += 14 # next odd
    number_of_digits = number.to_s.size
  end
  "There is no possible number that fulfills those requirements"
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
