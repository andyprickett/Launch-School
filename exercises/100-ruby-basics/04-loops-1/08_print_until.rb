numbers = [7, 9, 13, 25, 18]
# add an index variable to keep track of where we are in the array
index = 0

until index == numbers.size # when the index is the same as the size, done
  # print the element at the current index location
  puts numbers[index]
  # increment the index by one
  index +=1
end
