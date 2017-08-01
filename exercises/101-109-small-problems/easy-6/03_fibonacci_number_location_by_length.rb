def find_fibonacci_index_by_length(num_of_digits)
  fib_array = [1, 1, 2] # [first fib num, second fib num, "index"] (index starts
  # at 2 because index of first fib num is 1 (not 0), and the array has the first
  # 2 fib nums in it already)
  fib_num = 0
  until fib_num.to_s.size >= num_of_digits
    fib_num = fib_array[0] + fib_array[1]
    fib_array[0], fib_array[1] = fib_array[1], fib_num
    fib_array[2] += 1
  end
  fib_array[2]
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
