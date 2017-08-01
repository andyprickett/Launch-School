def crunch(string)
  # prev_char = nil
  # string_array = []
  # string.chars.each do |char|
  #   string_array << char if char != prev_char
  #   prev_char = char
  # end
  # string_array.join
  # OR
  # index = 0
  # crunch_text = ''
  # while index <= (string.length - 1)
  #   crunch_text << string[index] unless string[index] == string[index + 1]
  #   index += 1
  # end
  # crunch_text
  # OR
  string.gsub(/(.)\1+/, '\1')
  # OR
  # string.gsub(/(.)(?=\1)/, '') # Jason Overby
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
