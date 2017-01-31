array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

This will produce an error.

'a' is a local, inner scope variable, created inside the block of 'each', and is not accessible outside of that block.
