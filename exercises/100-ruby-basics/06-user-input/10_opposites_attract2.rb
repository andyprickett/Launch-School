def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

nums = []

loop do
  loop do
    puts "Please enter a positive or negative integer:"
    user_input = gets.chomp
    if valid_number?(user_input)
      nums.push(user_input)
      break if nums.length == 2
    else
      puts "Invalid input. Only non-zero integers are allowed."
    end
  end
  nums.map! {|num| num.to_i}
  break if nums[0] * nums[1] < 0
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
  nums = []
end
puts "#{nums[0]} + #{nums[1]} = #{nums[0] + nums[1]}"
