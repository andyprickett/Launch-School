# def running_total(array)
#   sum = 0
#   array.map {|n| sum += n }
# end

# def running_total(array)
#   sum = 0
#   array.each_with_object([]) {|n, sums_array| sums_array << sum += n}
# end

def running_total(array)
  temp_array = []
  return_array = []
  array.each do |n|
    temp_array << n
    return_array << temp_array.inject(:+)
  end
  return_array
end

# OR (better! Tannr Allard)
# def running_total(array)
#   temp_array = []
#   array.map do |num|
#     temp_array << num
#     temp_array.inject(:+)
#   end
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
