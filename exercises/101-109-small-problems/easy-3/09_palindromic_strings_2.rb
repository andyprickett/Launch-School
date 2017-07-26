def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.chars
  string.keep_if { |char| ('a'..'z').cover?(char) || ('0'..'9').cover?(char) }
  # OR
  # string = string.downcase.delete('^a-z0-9')
  p string
  palindrome?(string.join)
end

p real_palindrome?('madam') # == true
p real_palindrome?('Madam') # == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") # == true # (only alphanumerics matter)
p real_palindrome?('356653') # == true
p real_palindrome?('356a653') # == true
p real_palindrome?('123ab321') # == false
