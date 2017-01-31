a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a

The output will be 7.

'a' points to an object of 7 in memory, which is an immutable object.
A new variable of 'b' is created in the method, and while
it is initially passed a reference to the object 7, it creates
a new object of 17 and assigns that to its internal variable of
'b'.
