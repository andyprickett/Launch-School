def new_roman(number)
  numeral = ''

  numeral = numeral + ('M' * (number/1000))

  if ((number % 1000)/100) == 9
    numeral = numeral + 'CM'
  elsif ((number % 1000)/100) == 4
    numeral = numeral + 'CD'
  else
    numeral = numeral + ('D' * ((number % 1000)/500))
    numeral = numeral + ('C' * ((number % 500)/100))
  end

  if ((number % 100)/10) == 9
    numeral = numeral + 'XC'
  elsif ((number % 100)/10) == 4
    numeral = numeral + 'XL'
  else
    numeral = numeral + ('L' * ((number % 100)/50))
    numeral = numeral + ('X' * ((number % 50)/10))
  end

  if (number % 10) == 9
    numeral = numeral + 'IX'
  elsif (number % 10) == 4
    numeral = numeral + 'IV'
  else
    numeral = numeral + ('V' * ((number % 10)/5))
    numeral = numeral + ('I' * (number % 5))
  end

  numeral
end


puts "Please enter a number from 1 to 3000..."

number = gets.chomp.to_i


puts new_roman(number)
