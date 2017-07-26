def palindrome?(string)
  reversed_string = []
  string.chars.each do |char|
    reversed_string.unshift(char)
  end
  string == reversed_string.join
  # OR
  # string == string.reverse
end

def palindrome?(array_or_string)
  input_into_array = []
  reversed = []
  index = 0
  while index < array_or_string.size
    input_into_array << array_or_string[index]
    reversed.unshift(array_or_string[index])
    index += 1
  end
  input_into_array == reversed
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p palindrome?('12321')
p palindrome?('abadzaba')
p palindrome?([1, 2, 3, 2, 1])
p palindrome?(['a', 'b', 'c'])
