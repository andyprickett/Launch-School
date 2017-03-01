puts 'Please enter your first name: '
first_name = gets.chomp
puts 'Please enter your middle name: '
mid_name = gets.chomp
puts 'Please enter your last name: '
last_name = gets.chomp
name_length = first_name.length + mid_name.length + last_name.length
puts 'Hello ' + first_name + ' ' + mid_name + ' ' + last_name + '!'
puts 'Did you know there are ' + name_length.to_s + ' letters in your name?'