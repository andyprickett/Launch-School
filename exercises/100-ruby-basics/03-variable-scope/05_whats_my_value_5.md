a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

This will output "Xyzzy".

While 'b' initially receives a reference to the string object 'a' points to,
it is immediately reassigned to a new string object 'yzzyX', and now points
to that object, forgetting about the reference it once had to the object 
that 'a' points to.
