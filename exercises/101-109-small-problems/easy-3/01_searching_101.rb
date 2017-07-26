HOW_MANY = 6
SUFFIXES = {  1 => 'st', 2 => 'nd' , 3 => 'rd', 0 => 'th' }

def get_suffix(counter)
  if (('4'..'9').include?(counter.to_s[-1])) || (counter > 9 &&
     counter.to_s[-2] == '1')
    SUFFIXES[0]
  else
    SUFFIXES[counter]
  end
end

number = nil
array = []
counter = 1

loop do
  suffix = get_suffix(counter)
  puts "==> Enter the #{counter}#{suffix} number:"
  number = gets.chomp.to_i
  break if counter >= HOW_MANY
  array << number
  counter += 1
end

if array.include?(number)
  appearance = "appears"
else
  appearance = "does not appear"
end

puts "The number #{number} #{appearance} in #{array}."
