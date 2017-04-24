result = [1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

p result

# the block will return either nil or num. if the condition evaluates to 
# true, then it will puts the number to output, and return nil from the 
# block to the method because puts returns nil.
# map should return [1, nil, nil]
