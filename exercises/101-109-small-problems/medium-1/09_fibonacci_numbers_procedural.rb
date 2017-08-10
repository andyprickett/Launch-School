def fibonacci(n)
  acc1, acc2 = 1, 1
  sum = 0
  (n-2).downto(1) do
    sum = acc1 + acc2
    acc1 = acc2
    acc2 = sum
  end
  sum
end

p fibonacci(4)
p fibonacci(20) #== 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
