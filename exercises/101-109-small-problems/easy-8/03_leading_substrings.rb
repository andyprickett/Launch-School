def substrings_at_start(string)
  leading_substrings = []
  1.upto(string.size) do |count|
    leading_substrings << string.slice(0, count)
  end
  # OR
  # 0.upto(string.size - 1) do |index|
  #   leading_substrings << string[0..index]
  # end
  leading_substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
