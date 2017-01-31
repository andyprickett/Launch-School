puts "Please enter a number higher than zero..."

number = gets.chomp.to_i

def countdown(number)
  if number < 1
    puts "ZERO!"
  else
    puts number
    countdown(number - 1)
  end
end
puts "Counting down..."
puts countdown(number)
