def multiply(n1, n2)
  n1 * n2
end

def square(number)
  multiply(number, number)
end

def power_up(number, power)
  exponential = 1
  power.times do
    exponential = multiply(exponential, number)
  end
  exponential
end

p square(5) == 25
p square(-8) == 64
p power_up(2, 3)
p power_up(3, 3)
