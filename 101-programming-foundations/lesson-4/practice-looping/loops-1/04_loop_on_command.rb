loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.downcase == 'yes'
  puts "Enter 'Yes' or 'yes' if you want to stop..."
end
