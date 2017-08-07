CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  # string.gsub(/([[:alpha:]&&[^aeiouAEIOU]])/, '\1\1')
  # OR
  output_string = ''
  string.each_char do |char|
    output_string << char
    output_string << char if CONSONANTS.include?(char.downcase)
  end
  output_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
