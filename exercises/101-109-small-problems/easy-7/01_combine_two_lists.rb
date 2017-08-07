def interleave(arr1, arr2)
  # output_array = []
  # index1 = 0
  # index2 = 0
  # loop do
  #   break if index1 >=  arr1.size
  #   output_array << arr1[index1]
  #   output_array << arr2[index2]
  #   index1 += 1
  #   index2 += 1
  # end
  # OR
  # arr1.each_with_index do |element, index|
  #   output_array << element << arr2[index]
  # end
  # output_array
  # OR (with zip)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
