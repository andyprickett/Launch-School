def triangle(n, coord=1)
  # n.times do |i|
  #   print ' ' * (n - (i + 1))
  #   print '*' * (i + 1)
  #   print "\n"
  # end
  # UPSIDE DOWN
  # n.times do |i|
  #   print ' ' * i
  #   print '*' * (n - i)
  #   print "\n"
  # end
  # ANY CORNER (from Walid Wahed)
  case coord
  when 1
    n.downto(1){ |i| puts ('*' * i).ljust(n) }
  when 2
    n.downto(1){ |i| puts ('*' * i).rjust(n) }
  when 3
    1.upto(n){ |i| puts ('*' * i).ljust(n) }
  when 4
    1.upto(n){ |i| puts ('*' * i).rjust(n) }
  end
end

triangle(5, 1) # size, corner
triangle(5, 2)
triangle(5, 3)
triangle(5, 4)
# triangle(5)
# triangle(9)
