x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  x = y
end
puts x

What does x print to the screen in each case?

First, prints a 3.
Second, throws an error because x is not defined outside of the scope of the loop.