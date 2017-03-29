def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# "pumpkins", because the attempted modification inside the method
# is just a reassignment to the method's local version of the variable
puts "My array looks like this now: #{my_array}"
# ["pumpkins", "rutabaga"], because the operation mutates the caller, 
# so it modifies the object that the method's variable refers to.
