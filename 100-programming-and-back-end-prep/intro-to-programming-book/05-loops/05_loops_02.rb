x = ""

while x != 'STOP'
  puts "Enter a number and I will square it."
  num = gets.chomp.to_i
  puts  num * num
  puts "Another (y/n)?. Or, 'STOP' to end..."
  x = gets.chomp
end

puts "All done. Thanks!"
