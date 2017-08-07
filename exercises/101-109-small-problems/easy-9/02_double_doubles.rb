def twice(number)
  number_string = number.to_s
  # if number_string.size >= 2 && number_string.size % 2 == 0
  #   first_half = number_string.slice(0..(number_string.size / 2) - 1)
  #   back_half = number_string.slice(number_string.size / 2..-1)
  #   if first_half == back_half
  #     number
  #   else
  #     number * 2
  #   end
  # else
  #   number * 2
  # end
  # OR
  center = number_string.size / 2
  first_half = center.zero? ? '' : number_string[0..center - 1]
  back_half = number_string[center..-1]

  return number if first_half == back_half
  return number * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
