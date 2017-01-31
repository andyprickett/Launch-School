PASSWORD = 'LaUnChScHoOl'

loop do
  puts ">> Please enter your password:"
  user_input = gets.chomp
  break if user_input.eql?(PASSWORD)
  puts ">> Invalid password!"
end

puts "Welcome!"
