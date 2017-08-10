text_file = File.read("01_longest_sentence.txt").gsub("\n", ' ')

sentences = text_file.split(/[.!?]/)

# sentences.map! { |sentence| sentence.split }

# count = 0
# sentence_number = 0
# sentences.each_with_index do |sentence, index|
#   if sentence.size > count
#     count = sentence.size
#     sentence_number = index + 1
#   end
# end
# puts "The sentence with the largest number of words is sentence #{sentence_number}."
# puts "It has #{count} words in it."
# OR (their solution)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words."
