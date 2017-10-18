def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# "pumpkinsrutabaga", because the << method modifies the mutable object
# that the variable a_string_param refers to.
puts "My array looks like this now: #{my_array}"
# ["pumpkins"], because the method variable an_array_param is just
# reassigned to a different object, which doesn't affect the array
# object that was referred to by the passed in parameter.
