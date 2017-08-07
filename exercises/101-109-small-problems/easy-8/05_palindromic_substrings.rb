def substrings_at_start(string)
  leading_substrings = []
  1.upto(string.size) do |count|
    leading_substrings << string.slice(0, count)
  end
  leading_substrings
end

def substrings(string)
  all_substrings = []
  (string.size - 1).downto(0) do |index|
    all_substrings.unshift(substrings_at_start(string[index..-1]))
  # OR
  # (0...string.size).each do |index| # 0 up to and not including string.size
  #   this_substring = string[index..-1]
  #   all_substrings.concat(substrings_at_start(this_substring))
  end
  all_substrings.flatten
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string.gsub(/[^A-Za-z0-9]/, ''))
  palindromes = []
  all_substrings.each do |str|
    # if str.size > 1
    #   front = 0
    #   back = -1
    #   failed_palindrome = while front < str.size / 2
    #                         break(true) if str[front] != str[back]
    #                         front += 1
    #                         back -= 1
    #                       end
    #   palindromes << str if !failed_palindrome
    # .gsub(/[^A-Za-z0-9]/, '')
    palindromes << str if palindrome?(str.downcase)
  end
  palindromes
end

# p palindromes('abcd') == []
# p palindromes('madam') #== ['madam', 'ada']
p palindromes('heLlo-Madam-Did-madAm-goOdbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

# p palindromes('Madam madam')
