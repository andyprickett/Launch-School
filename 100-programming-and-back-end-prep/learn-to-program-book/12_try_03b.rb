def roman_to_integer(roman_string)
  roman_to_digit = {'i' => 1,
                    'v' => 5,
                    'x' => 10,
                    'l' => 50,
                    'c' => 100,
                    'd' => 500,
                    'm' => 1000}

index = roman_string.length - 1
previous_value = 0 # Since we're starting from the end, 0 is the
# default previous value
total_value = 0
# Building it backwards...
  while index >= 0
    char = roman_string[index].downcase # First/next character, moving 
    # from the end of the string to the beginning
    index -= 1 # Immediately decrement index for the next loop iteration
    if !roman_to_digit.has_key?(char) # In the hash?
      puts "That is not a valid Roman Numeral. Goodbye."
      return # Nope, goodbye.
    else
      current_value = roman_to_digit[char] # Current value is whatever 'char'
      # is numerically in the hash table
      if current_value < previous_value # Is the previous number greater than
        # the current number? That means we have a case of modern roman
        # numerals, and in our last time through the loop we added that
        # previous value to the total and now need to subtract the current
        # value from it to adjust
        current_value *= -1 # Convert current value to the negative of itself
        # so that adding it to total will subtract it from the total
      else
        previous_value = current_value # Things are flowing in the normal
        # order, so store the current value as the previous value for the
        # next iteration.
      end
      total_value += current_value # Add the adjusted (or not) current value
      # to the total
    end
  end
  total_value
end

puts roman_to_integer('mcmxcix')
puts roman_to_integer('cmxcix')

puts roman_to_integer('mcMxCix')

