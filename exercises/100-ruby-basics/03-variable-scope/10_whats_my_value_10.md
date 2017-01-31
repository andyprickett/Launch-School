a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

This will produce an exception.

The 'a' inside of the 'each' block is local to the method that the 'each'
block is inside of. It is not the same 'a' that is defined/assigned outside
of the method. Since it hasn't been defined/assigned to anything yet, 
it cannot be REassigned to whatever 'b' is, and so it will produce an error.
