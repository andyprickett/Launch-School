def halvsies(array)
  arr1, arr2 = [], []
  total_array = [ arr1, arr2 ]

  array.each_with_index do |item, index|
    if index <= (array.size - 1)/2
      arr1 << item
    else
      arr2 << item
    end
  end
  total_array
  # OR
  # first_half = array.slice(0, (array.size / 2.0).ceil)
  # second_half = array.slice(first_half.size, array.size - first_half.size)
  # [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([1, 5, 2, 5, 3]) == [[1, 5, 2], [5, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
