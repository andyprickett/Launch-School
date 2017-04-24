result = [1, 2, 3].reject do |num|
  puts num
end

# this should return all of the original elements, because puts evalutates
# to nil, which will return 'falsey' from the block, so all of the elements
# will be considered 'rejects' and included in the return value of reject.

p result
