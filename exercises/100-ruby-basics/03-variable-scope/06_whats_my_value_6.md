a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

This will produce an error.

The argument 'a' that is passed in to the method is a reference that is
immediately assigned to the method variable 'b'. The 'a' variable used
in the method was not passed into the method, and was not created yet
in the method by some sort of assignment, so the method is referring
to a variable that 'doesn't exist', as far as its scope is concerned.
