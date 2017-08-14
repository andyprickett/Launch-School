def triangle(a, b, c)
  a, b, c = sorted = [a, b, c].sort
  total = sorted.reduce(:+)
  case
  when (total != 180), sorted.include?(0) # .any? { |angle| angle == 0 }
    :invalid
  when c < 90
    :acute
  when c == 90
    :right
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
p triangle(63, 64, 65) == :invalid
