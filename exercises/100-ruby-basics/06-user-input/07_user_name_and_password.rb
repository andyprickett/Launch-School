USERNAME = 'admin'
PASSWORD = 'LaUnChScHoOl'

loop do
  puts ">> Please enter user name:"
  user_name = gets.chomp
  puts ">> Please enter your password:"
  user_password = gets.chomp
  break if user_name.eql?(USERNAME) && user_password.eql?(PASSWORD)
  puts ">> Authorization failed!"
end

puts "Welcome!"
