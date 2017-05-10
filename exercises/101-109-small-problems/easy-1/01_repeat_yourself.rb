def repeat(string, n)
  n.times do
    puts string
  end
end

repeat('Hello', 3)
puts "-----"
repeat('Hello', 0)
puts "-----"
repeat('Hello', 5)

