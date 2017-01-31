a = [5, 9, 3, 11]
puts a.min

Before Ruby 2.4.0, #min was in the Enumerable module and was a mix-in to Array.

puts a.min(2)

Adding the argument of 2 allows us to take the 2 smallest values in the Array.
Thanks, Enumerable!
