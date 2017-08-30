def merge(array1, array2)
  return array2 if array1.empty?
  return array1 if array2.empty?

  result = []
  array2_start_index = 0
  index_offset = 0
  elements_used = false

  array1.each do |elem1|
    array2[array2_start_index..-1].each do |elem2|
      if elem2 < elem1
        result << elem2
        index_offset += 1
        elements_used = true
      end
    end
    result << elem1
    array2_start_index = index_offset if elements_used
    elements_used = false
  end
  (result << array2[array2_start_index..-1]).flatten
end

# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([3, 5, 9], [4, 6, 8, 10])
# p merge([9], [4, 6, 8])
# p merge([1, 5, 9], [2, 6, 8, 10])
# p merge([2, 5, 9], [1, 6, 8, 10])
# p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([1, 2, 3], [2, 2, 4])
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]
