puts 'Type as many words as you want, one per line. '
puts 'Type Enter on an empty line when done...'

words = []

while true
  user_input = gets.chomp
  break if user_input == ''
  words.push(user_input)
end

puts "All done, here's what you entered, in sorted order..."

puts words.sort.join(", ")
