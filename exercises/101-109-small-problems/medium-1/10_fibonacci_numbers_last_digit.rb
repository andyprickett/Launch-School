def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

def fibonacci_last(nth)
  # fibonacci(nth) % 10
  # OR
  # fibonacci(nth).to_s[-1].to_i
  # OOORRRRR
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

def fibonacci_last_instant(nth)
  first, last = [1, 1]
  3.upto(nth % 60) do
    first, last = [last, (first + last) % 10]
  end
  last
  # acc1, acc2 = 1, 1
  # sum = 0
  # nth %= 60 # repeating pattern every 60 numbers
  # (nth-2).downto(1) do
  #   sum = acc1 + acc2
  #   acc1 = acc2
  #   acc2 = sum
  #   sum %= 10 # only use the last digit, all that matters
  # end
  # sum
end

p fibonacci_last_instant(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last_instant(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last_instant(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last_instant(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last_instant(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last_instant(123456789) # -> 4
p fibonacci_last_instant(123456789987745)
