require 'pry'

def reverse!(list)
  index = 0
  while index < list.size
    list.insert(index, list.pop)
    index += 1
    #binding.pry
  end
  # OR (better, SWAP!)
  # left_index = 0
  # right_index = -1
  # while left_index < array.size / 2
  #   list[left_index], list[right_index] = list[right_index], list[left_index]
  #   left_index += 1
  #   right_index -= 1
  # end
  list
end

p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) # => []
p list == []
