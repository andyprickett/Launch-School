def reverse_sentence(string)
  output_string = []
  string.split.each { |word| output_string.unshift(word) }
  output_string.join(' ')
end

# OR string.split.reverse.join(' ')

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
