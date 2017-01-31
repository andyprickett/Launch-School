a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

This will also output a 7.

Even though a value of 12 is given to 'b', and it assigns that to an 'a'
inside of the method, that 'a' is still not the outside 'a', and will have
no effect on the outside 'a'.
