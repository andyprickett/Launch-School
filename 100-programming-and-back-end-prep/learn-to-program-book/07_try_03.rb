
puts 'Say or YELL something to your Grandma... (say "BYE" 3 times in a row to end)'
bye_count = 0

while true
  you_say = gets.chomp
  if you_say == 'BYE'
    bye_count += 1
    break if bye_count == 3
  else
    bye_count = 0
  end
  if (you_say == you_say.upcase)
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end

puts 'WHERE ARE YOU GOING?'

  

