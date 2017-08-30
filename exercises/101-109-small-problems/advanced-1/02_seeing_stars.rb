def make_star_line(outside, inside)
  outside = ' ' * outside
  inside  = ' ' * inside
  outside + "*" + inside + "*" + inside + "*" + outside
end

def star(n)
  star_array = []
  distance_from_center = n / 2
  
  outside = 0
  distance_from_center.downto(1) do |row|
    star_array << make_star_line(outside, row - 1)
    outside += 1
  end

  star_array << '*' * n

  outside = distance_from_center - 1
  1.upto(distance_from_center) do |row|
    star_array << make_star_line(outside, row - 1)
    outside -= 1
  end
  puts star_array
end

star(7)
star(9)
