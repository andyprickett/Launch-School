def reverse(list)
  # new_list = []
  # list.each do |item|
  #   new_list.unshift(item)
  # end
  # OR Array#reverse_each !!
  # list.reverse_each { |item| new_list << item }
  # OR Enumerable#inject
  # list.inject([]) { |new_list, item| new_list.unshift(item) } # thanks Jason Truman (again)
  # OR Enumerable#each_with_object
  list.each_with_object([]) { |item, new_list| new_list.unshift(item) }
  # new_list
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
