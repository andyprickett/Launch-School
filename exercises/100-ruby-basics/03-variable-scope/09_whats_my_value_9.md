a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

This will output 7.

The 'a' that is created/used in the block of 'each' is local to that block, 
and not the same 'a' that is defined outside of it. The block will do what
it does, but it will not affect the 'a' that is defined outside of it.
