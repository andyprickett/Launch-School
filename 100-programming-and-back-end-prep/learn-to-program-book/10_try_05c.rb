def english_number(number)

  if number < 0 # No negative numbers
    return('Please enter a number zero or greater.')
  end
  if number == 0
    return('zero') # Boom, we're done.
  end

  # No more special cases! No more returns!

  num_string = '' # This is the string we will return
  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  zillions   =[['hundred',            2],
               ['thousand',           3],
               ['million',            6],
               ['billion',            9],
               ['trillion',          12],
               ['quadrillion',       15],
               ['quintillion',       18],
               ['sextillion',        21],
               ['septillion',        24],
               ['octillion',         27],
               ['nonillion',         30],
               ['decillion',         33],
               ['undecillion',       36],
               ['duodecillion',      39],
               ['tredecillion',      42],
               ['quattuordecillion', 45],
               ['quindecillion',     48],
               ['sexdecillion',      51],
               ['septendecillion',   54],
               ['octodecillion',     57],
               ['novemdecillion',    60],
               ['vigintillion',      63],
               ['googol',           100]]
  # "left"  is how much of the number we still have to write out.
  # "write" is the part we are writing our right now.
  left  = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name =       zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base           # How many zillions left?
    left  = left - write * zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix     = english_number(write)
      num_string = num_string + prefix + ' ' + zil_name
      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end

  write = left/10           # How many tens left?
  left  = left - write * 10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve", we have to
      # make a special exception for these that are 'teens'.
        num_string = num_string + teenagers[left-1]
        # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

        # Since we took care of the digit in the ones place already,
        # we have nothing left to write. Set to '0' so no dash will be
        # added in the next step.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left             # How many ones are left to write out?
  left  = left - write * 0 # Subtract off those ones.
  if write > 0
      num_string = num_string + ones_place[write-1]
      # The "-1" is because ones_place[3] is 'four', not 'three'.
  end

  # Now we just return "num_string".
  num_string
end

puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(903824572098374589624358631038209437509832897459)


