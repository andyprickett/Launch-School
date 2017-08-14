def triangle(side1, side2, side3)
  tri_array = [side1, side2, side3].sort
  long = tri_array[-1]
  tri_total = tri_array.reduce(:+)

  if tri_array.any? { |side| side == 0 } || ((tri_total - long) < long ) # true if ever true
    :invalid
  elsif tri_array.all? { |side| side / side1.to_f == 1 } # true if never false
    :equilateral
  elsif tri_array.one? { |side| side / side1.to_f != 1 } # true if exactly once
    :isosceles
  else
    :scalene
  end
end
# Jason Overby!
# def triangle(a, b, c)
#   a, b, c = [a, b, c].sort
#   if a + b <= c
#     :invalid
#   elsif a == b && a == c
#     :equilateral
#   elsif a == b || b == c
#     :isosceles
#   else
#     :scalene
#   end
# end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid
