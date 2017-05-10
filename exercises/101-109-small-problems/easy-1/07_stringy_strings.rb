def stringy(n, first=1)
  string = []
  while n > 0
    if n.odd?
      string.unshift(first)
    else
      string.unshift((first - 1).abs)
    end
    n -= 1
  end
  # OR
  # n.times do |i|
  #   s = i.even? ? 1 : 0
  #   string << s
  # end
  string.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(7, 0) == '0101010'
puts stringy(4, 0) == '0101'
