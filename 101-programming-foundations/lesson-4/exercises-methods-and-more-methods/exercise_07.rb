result = [1, 2, 3].any? do |num|
  puts num
  num.odd?
end

p result

# the block will evaluate to true or false (a boolean), because that is the 
# return of the odd? method, and that is the last statement in the block.
# since there are odd numbers in the array, the return of any? is going
# to be true. the code will output the number 1, since it will perform
# the first block call (which includes the puts num), and once it finds
# an odd number (which it will on this first call), it will return true, 
# and the any? method will be satisfied and return true and no further
# calls to the block will happen.
