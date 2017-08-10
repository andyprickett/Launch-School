def bubble_sort!(array)
  # n = array.size - 1
  # loop do
  #   swapped = false
  #   1.upto(n) do |index|
  #     if array[index - 1] > array[index]
  #       array[index - 1], array[index] = array[index], array[index - 1]
  #       swapped = true
  #     end
  #   end
  #   break if !swapped
  # end
  # ---- Optimization 1
  # n = array.size
  # loop do
  #   swapped = false
  #   index = 1
  #   while index < n
  #     if array[index - 1] > array[index]
  #       array[index - 1], array[index] = array[index], array[index - 1]
  #       swapped = true
  #     end
  #     puts "#{array} index: #{index} n: #{n}"
  #     index += 1
  #   end
  #   n -= 1
  #   break if !swapped
  # end
  # ---- Optimization 2
  last_index = array.size - 1
  loop do
    new_last_index = 1 # initialize new_last_index for this pass through array
    1.upto(last_index) do |index|
      # puts "index: #{index} last index: #{last_index}"
      if array[index - 1] > array[index]
        array[index - 1], array[index] = array[index], array[index - 1]
        new_last_index = index # replaced every time, wherever it leaves off is the 
                               # index that was last swapped into
      end
      # puts "#{array}"
      # puts "new last index: #{new_last_index}"
    end
    last_index = new_last_index - 1 # last_index is now the index just before where
                                    # the last swap happened (because everything
                                    # from that index on to the end is good to go)
    break if last_index == 0 # the last swap was into index 1, so we're done
  end
end

p array = [5, 3, 2]
bubble_sort!(array)
p array #== [3, 5]

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array #== [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
