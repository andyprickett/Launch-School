def display_age(name='Teddy')
  age = rand(20..200)

  puts "What is the name?"
  input_name = gets.chomp
  case input_name
  when ''
    puts "#{name.capitalize} is #{age} years old!"
  else
    puts "#{input_name.capitalize} is #{age} years old!"
  end
end

display_age
display_age
