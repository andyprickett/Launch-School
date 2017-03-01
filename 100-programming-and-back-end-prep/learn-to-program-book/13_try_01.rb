class Array
  def shuffle
    unshuffled = self
    shuffled = []
    while unshuffled.length > 0
      random_index = rand(unshuffled.length)
      # THIS...
      shuffled.push(unshuffled.delete_at(random_index))

    end
    shuffled
  end
end
# -------------------------
class Integer
  def factorial
    num = self
    if num < 0
      return "You can't take the factorial of a negative number."
    end

    if num <= 1
      1
    else
      num * (num - 1).factorial
    end
  end

  def to_roman
    number = self
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
end

puts ['what', 'she', 'did', 'yesterday', 'and', 'maybe'].shuffle
puts 5.factorial
puts 1999.to_roman
