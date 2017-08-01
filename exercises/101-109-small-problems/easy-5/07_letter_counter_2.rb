def word_sizes(string)
  # totals_hash = {}
  # words_array = string.split(' ')
  # if string != ''
  #   words_array.each do |word|
  #     totals_hash[word.size] = words_array.count { |wrd| wrd.size == word.size }
  #   end
  # end
  # totals_hash
  totals_hash = Hash.new(0) # initialize with zeros so first increment can happen
    string.split.each do |word|
      word = word.gsub(/\W/, '')
      # OR
      # word = word.delete('^A-Za-z') # same as String#count
      totals_hash[word.size] += 1
    end
  totals_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
