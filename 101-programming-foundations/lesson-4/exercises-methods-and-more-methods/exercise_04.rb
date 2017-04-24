result = ['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# the first argument given the block is the current element of the array.
# then the first letter of that string is used as a key, paired with the
# string element as a value, in a new hash which is the collection object
# passed in to the block as the second argument, and is returned from both
# the block after each iteration, and the whole method at the end.
# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}

p result
