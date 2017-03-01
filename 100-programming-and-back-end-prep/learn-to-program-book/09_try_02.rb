def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    elsif reply == 'no'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts 'Please answer yes or no...'

answer = ask('Do you like eating tacos?')
puts "You like it?: #{answer}!"
answer = ask('Do you like eating burritos?')
puts "You like it?: #{answer}!"
wets_bed = ask('Do you we the bed?')
answer = ask('Do you like eating chimichangas?')
puts "You like it?: #{answer}!"

puts 'Your answer about wetting the bed is ' + wets_bed.to_s + '.'

