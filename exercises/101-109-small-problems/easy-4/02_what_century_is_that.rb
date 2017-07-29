def century(year)
  century, year = year.divmod(100)
  if year > 0
    century += 1
  end
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  last_digit = (century % 10)
  if (11..13).cover?(century % 100)
    'th'
  elsif last_digit == 1
    'st'
  elsif last_digit == 2
    'nd'
  elsif last_digit == 3
    'rd'
  else
    'th'
  end
  # OR
  # return 'th' if [11, 12, 13].include?(century % 100)
  # last_digit = century % 10

  # case last_digit
  # when 1 then 'st'
  # when 2 then 'nd'
  # when 3 then 'rd'
  # else 'th'
  # end
end

p century(2000) # == '20th'
p century(2001) # == '21st'
p century(1965) # == '20th'
p century(256) # == '3rd'
p century(5) # == '1st'
p century(10103) # == '102nd'
p century(1052) # == '11th'
p century(1127) # == '12th'
p century(11201) # == '113th'
p century(1489)
