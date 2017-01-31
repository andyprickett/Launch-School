loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  # if the answer is correct...
  if answer == 4
    # ...say so...
    puts "That's correct!"
    #...and exit the loop.
    break
  end
  # if answer is wrong (it wasn't 4), say so and let loop continue
  puts "Wrong answer. Try again!"
end
