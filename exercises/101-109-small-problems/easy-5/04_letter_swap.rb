def swap(string)
  output_string = string.split(' ').map do |word|
    # word_array = word.chars
    # last = word_array.last
    # first = word_array.first
    # word_array[0] = last
    # word_array[-1] = first
    # word_array.join('')
    # OR
    word[0], word[-1] = word[-1], word[0]
    word
  end
  output_string.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'
