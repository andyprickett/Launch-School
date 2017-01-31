def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_validated_input
  input = nil
  loop do
    puts ">> Please enter a positive or negative integer:"
    input = gets.chomp
    if !valid_number?(input)
      puts ">> Invalid input. Only non-zero integers are allowed."
    else
      break
    end
  end
  input.to_i
end

int1, int2 = nil

loop do
  int1 = get_validated_input
  int2 = get_validated_input

  break if (int1 * int2) < 0
  puts ">> Sorry. One integer must be positive, one must be negative."
  puts ">> Please start over."

end

sum = int1 + int2
puts ">> #{int1} + #{int2} = #{sum}"

