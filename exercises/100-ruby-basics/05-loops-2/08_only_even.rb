number = 0

until number == 10
  number += 1
  # check if number is odd. if so, skip to next iteration
  next if number.odd?
  # if we didn't skip to next, print number
  puts number
end
