def word_cap(string)
  # string_array = string.split
  # string_array.map! { |word| word.capitalize }
  # string_array.join(' ')
  # OR (the hard way)
  # output = string.split.map do |word|
  #            result = ''
  #            word.chars.each_with_index do |char, index|
  #              if index == 0
  #                result << char.upcase
  #              else
  #                result << char.downcase
  #              end
  #            end
  #            result
  #          end
  # output.join(' ')
  # OR (the hard way again)
  output = string.split.map do |word|
             first = word.slice!(0).upcase
             word.gsub!(/\p{Upper}/) { |c| c.downcase }
             first << word
           end
  output.join(' ')

end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
