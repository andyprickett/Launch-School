numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1
# prints the first, then drops the first element of the array.
# now the array is [2, 3, 4], and the each method is going to
# move on to the second element in the array, which in its 
# current state is 3.
# 3
# then the first element is dropped again, and the array is now
# [3, 4]. each is going to move on to the third element of the array,
# which the array no longer has. and that's that.

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1
# prints the first element of the array, then pops off the last element.
# now the array is [1, 2, 3]. each will move on to the second element, 
# which is a 2, and prints that.
# 2
# then the last element is popped off again, so now the array is [1, 2].
# each will be looking for the third element of the array, which no 
# longer exists, and so that's that.

