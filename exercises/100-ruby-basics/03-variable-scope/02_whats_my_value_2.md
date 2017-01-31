a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a

This will also output a 7.

The 'a' that is defined/created within the method is not the 'a' that is created
outside of it, and so what happens in the method does not affect where the 
outside 'a' points, or the object it points to.
