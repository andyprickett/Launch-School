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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
