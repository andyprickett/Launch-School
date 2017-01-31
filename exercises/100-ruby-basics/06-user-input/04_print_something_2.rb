# intitialize answer variable outside of the loop for after-loop availability
answer = nil
loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
=begin #not this way...
  case answer
  when 'y'
    puts "something"
    break
  when 'n'
    break
  else
    puts "Invalid entry! Please enter y or n."
  end
=end
  # this way...
  # exit loop if we have an answer that is valid
  # create a data structure with valid answers, see if answer is in it
  break if %w(y n).include?(answer)
  # if no valid answer, error message and iterate again
  puts ">> Invalid entry! Please enter y or n."
end
# outside of the loop, we have a valid answer, what do we do with it?
puts "something" if answer == 'y'
# nothing to do for answer 'n'
