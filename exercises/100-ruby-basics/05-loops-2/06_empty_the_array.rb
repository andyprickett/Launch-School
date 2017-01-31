names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  # print the first name of the array, which is the return value of shift
  # also, shift is depopulating the array with each loop
  puts(names.shift)
  # exit loop if array has been shifted to empty
  break if names.empty?
end

# last to first: use pop instead of shift
