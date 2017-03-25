1. a method that returns the sum of two integers

Given two integers.

Add the two numbers together.
- Save result to a new variable.

After that print the result variable.
----------
START

# Given two integers called "num1" and "num2"

SET number_1 = GET num1 from method parameters

SET number_2 = GET num2 from method parameters

SET result = number_1 + number_2

PRINT result

END
==========
2. a method that takes an array of strings, and returns a string that is all of those strings concatenated together

Given an array of strings.

Iterate through the collection one by one.
  - save the first value as the starting value.
  - for each iteration, add the current value to the saved value and save as the saved value.

After iterating through the collection, return the saved value.
----------
START

# Given an array of strings

SET iterator = 1
SET  saved_value = value at array space 0

WHILE iterator < length of array
  SET saved_value = saved_value + current value

  SET iterator = iterator + 1

PRINT (return) saved_value

END
==========
3. a method that takes an array of integers, and returns a new array with every other element

Given an array of integers

Iterate through the array one by one.
  - save the first value into a new array.
  - save the index value
  - for each iteration, compare the index value
    - if it is 2 more than the previous index
      - save the value into the new array
      - save the index into the index value

After iteration through the array, return the new array
----------
START

# Given an array of integers

SET iterator = 0
SET next_spot = 0

WHILE iterator < length of array
  READ given_array_at_iterator
  SET new_array at next_spot = given_array_at_iterator
  SET iterator = iterator + 2
  SET next_spot = next_spot + 1
  go to the next iteration


PRINT (return) new_array
