WORD_DIGITS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(string)
  # WORD_DIGITS.each do |word, digit|
    # string.gsub!(/\b#{word}\b/) { |w| digit }
  # consecutive = 0
  string = string.split(' ').map do |word|
    changed = false
    WORD_DIGITS.each do |n_word, digit|
      if /\b#{n_word}\b/ =~ word.downcase
        word = word.downcase.sub(/\b#{n_word}\b/, digit)
        changed = true
      end
    end
    if changed
      word
    else
      ' ' + word + ' '
    end
  end
  string = string.join.squeeze(' ').strip
  if /(\d{3})(\d{4})(\W)/.match(string)
    string.gsub!(/(\d{3})(\d{4})(\W)/, "\\1-\\2\\3")
  end
  if /(\d{3})(\d{3}-\d{4})/.match(string)
    string.gsub!(/(\d{3})(\d{3}-\d{4})/, "(\\1) \\2")
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p word_to_digit('Please call me at nine four nine five four eight one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p word_to_digit('We 2 3, went there five times. Six weeks ago.')
p word_to_digit('Nothing to see here folks.')
p word_to_digit('')
