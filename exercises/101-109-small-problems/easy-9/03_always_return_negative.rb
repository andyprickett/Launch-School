def negative(n)
  # n * (n.to_f <=> 0)
  # n.to_i
  # OR
  # n > 0 ? -n : n
  # OR
  -n.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
