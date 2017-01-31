a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

This will output 3.

Since 'a' was defined outside of the block, it can be accessed inside of the
block, and reassigned to point to something else. In this case, the last
element of the array (3) is the last thing assigned to 'a', and so that is
where 'a' now points (to the immutable object 3).
