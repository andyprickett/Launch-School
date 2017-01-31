require 'pry'
STR_TO_DIGIT = {'1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_integer(string)
  digit = 0
  string.chars.each do |str|
    digit = (digit * 10) + STR_TO_DIGIT[str]
  end
  digit
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
