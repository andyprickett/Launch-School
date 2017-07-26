puts "Please write a word or multiple words:"
string = gets.chomp

index = 0
count = 0

loop do
  break if string[index] == nil
  if string[index] !=  ' '
    count +=1
  end
  index += 1
end

# OR
# count = string.delete(' ').size
puts "There are #{count} characters in \"#{string}\"."


