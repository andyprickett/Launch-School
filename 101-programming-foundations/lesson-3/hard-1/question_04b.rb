def an_ip_number?(word)
  %w(100 68 0 1).include?(word)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split('.')
  valid_address = false
  if dot_separated_words.size == 4
    valid_address = while dot_separated_words.size > 0
                      word = dot_separated_words.pop
                      break(false) unless an_ip_number?(word)
                    end
  end
  valid_address.nil? # this is bad/confusing.
end

puts dot_separated_ip_address?('463.68.0.1')
puts dot_separated_ip_address?('100.68.0.1')
