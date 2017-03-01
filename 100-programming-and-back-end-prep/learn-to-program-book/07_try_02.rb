puts 'Say something to your Grandma... (say "BYE" to end)'
you_say = gets.chomp

while you_say != 'BYE'
  if you_say == you_say.upcase
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
  you_say = gets.chomp
end
puts 'WHERE ARE YOU GOING?'

  

