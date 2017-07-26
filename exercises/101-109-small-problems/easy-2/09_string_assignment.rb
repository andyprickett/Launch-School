name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# The variable "name" is assigned to point to the mutable string object 'Bob'.
# The variable "save_name" is assigned to also point at that object.
# upcase! is a mutating method, and modifies the mutable string object 'Bob'
#   in place, since that is where the variable "name" is pointing to.
# Now both variables point to this same mutated string object 'BOB'.
