loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  # add a break with the condition of a 'yes' for answer
  break if answer == 'yes'
  # no break? keep going!
  puts 'Here I go again!'
end
