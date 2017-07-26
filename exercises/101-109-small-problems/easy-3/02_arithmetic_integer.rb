def prompt(message)
  puts "==> #{message}"
end

prompt "==> Enter the first number:"
number_1 = gets.chomp.to_i
prompt "==> Enter the second number:"
number_2 = gets.chomp.to_i

prompt "==> #{number_1} + #{number_2} = #{number_1 + number_2}"
prompt "==> #{number_1} - #{number_2} = #{number_1 - number_2}"
prompt "==> #{number_1} * #{number_2} = #{number_1 * number_2}"
prompt "==> #{number_1} / #{number_2} = #{number_1 / number_2}"
prompt "==> #{number_1} % #{number_2} = #{number_1 % number_2}"
prompt "==> #{number_1} ** #{number_2} = #{number_1 ** number_2}"
