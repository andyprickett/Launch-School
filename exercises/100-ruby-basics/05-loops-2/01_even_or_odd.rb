count = 1

loop do
  # print statements based on parity of count
  puts "#{count} is odd!" if count.odd?
  puts "#{count} is even!" if count.even?
  break if count == 5 # have we done 5 of these? if so, done
  count += 1
end
