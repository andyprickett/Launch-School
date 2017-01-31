a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

This will output "Xy-zy".

While numbers are immutable objects, strings are mutable. So, the reference
to the string object "Xyzzy" that is passed in to the method by the argument
'a' is shared by 'b'. Since 'b' refers to the same, actual string object, and
the method performs a mutating method on it ([]= is a method), the string
object both 'a' and 'b' refer to is mutated.
