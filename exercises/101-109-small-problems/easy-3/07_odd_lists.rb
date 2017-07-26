# def oddities(array)
#   index = 0
#   return_array = []
#   loop do
#     break if index >= array.size
#     return_array << array[index] if index.even?
#     index += 1
#   end
#   return_array
# end

# def oddities(array)
#   return_array = []
#   index = 0
#   while index < array.size
#     return_array << array[index]
#     index += 2
#   end
#   return_array
# end

def oddities(array)
  return_array =[]
  array.each_with_index do |element, index|
    return_array << element if index.even?
  end
  return_array
end

def evenities(array)
  return_array =[]
  index = 0
  while index < array.size
    return_array << array[index] if index.odd?
    index += 1
  end
  return_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

p evenities([1, 2, 3, 4, 5, 6, 7])
p evenities(['abc', 'def', 'ghi'])
p evenities([123])
p evenities([])

