require 'pry'
def roman_to_integer(roman_string)
  roman_to_digit = {'i' => 1,
                    'v' => 5,
                    'x' => 10,
                    'l' => 50,
                    'c' => 100,
                    'd' => 500,
                    'm' => 1000}

index = 0
previous_value = 1000 # Since we're starting from the beginning, 1000 is the
# default previous value
total_value = 0
# Building it forwards...
  while index < roman_string.length
    char = roman_string[index].downcase # First/next character
    if !roman_to_digit.has_key?(char) # In the hash?
      puts "That is not a valid Roman Numeral. Goodbye."
      return # Nope, goodbye.
    else
      current_value = roman_to_digit[char] # Current value is whatever 'char'
      # is numerically in the hash table
      if previous_value < current_value # Is the previous number less than the 
        # current number? (It won't be if the first number is 1000, since
        # the default previous has been set to that). That means we have
        # a case of modern roman numerals, and in our last time through
        # the loop we added the current value to the total unnecessarily.
        total_value -= previous_value # Subtract that lesser previous value
        # from the total undoing that last loop
        current_value -= previous_value # Convert current value to whatever
        # it is minus the previous value to get the modern roman numeral
        # amount
        total_value += current_value # Add that adjusted current value to
        # the adjusted total
      else # Numbers are in normal order of highest to lowest
        total_value += current_value # Add the current value to the total, 
        # which may be undone if we encounter the modern roman case
      end
    end
    previous_value = roman_to_digit[char] # After processing everything,
    # set previous value to what is now the current value before we iterate
    # through the next loop
    index +=1 # Increment index for the next loop iteration
  end
  total_value
end

puts roman_to_integer('mcmxcix')
puts roman_to_integer('cmxcix')

puts roman_to_integer('mcMxCix')

