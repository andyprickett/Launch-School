array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Each element in array1 is a reference to a mutatble string object.
# Those same references are placed one by one into array2.
# Mutating those string objects in place with upcase! will affect all
#   references to them, so array2 will have the same mutated elements as array1.
