def multiply_list(arr1, arr2)
  # result = []
  # arr1.each_with_index { |n, i| result << (n * arr2[i]) }
  # result
  # OR
  arr1.zip(arr2).map { |pair| pair[0] * pair[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
