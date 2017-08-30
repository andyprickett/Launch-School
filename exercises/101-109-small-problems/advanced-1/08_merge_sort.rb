def merge(array1, array2)
  puts "I am now merge-sorting..."
  puts "array1: #{array1}, array2: #{array2}"
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
  puts "Merge-Sorted..."
  (result << array2[array2_start_index..-1]).flatten
end

# def merge_sort(array)
#   return array if array.size == 1
#   puts "array is: #{array}"

#   sub_array_1 = array[0...array.size / 2]
#   sub_array_2 = array[array.size / 2...array.size]
#   puts "sub_array_1: #{sub_array_1}, sub_array_2: #{sub_array_2}..."

#   sub_array_1 = merge_sort(sub_array_1)
#   puts "sub_array_1: #{sub_array_1} done..."
#   sub_array_2 = merge_sort(sub_array_2)
#   puts "sub_array_2: #{sub_array_2} done..."

#   merge(sub_array_1, sub_array_2)
# end

def merge_sort(array)
  start_array = array.map { |elem| [elem] } # atomize!

  until start_array.size == 1
    puts "start_array: #{start_array}"

    index_left = 0
    merged_array = []

    while index_left < start_array.size
      left = start_array[index_left]
      right = start_array[index_left + 1]
      right = [] if right.nil?
      merged_array << merge(left, right)
      puts "merged_array: #{merged_array}"
      index_left += 2
    end
    start_array = merged_array
  end

  start_array.flatten
end

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
