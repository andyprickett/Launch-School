def letter_case_count(string)
  # result = { lowercase: 0, uppercase: 0, neither: 0 }
  # result[:lowercase] = string.count("a-z")
  # result[:uppercase] = string.count("A-Z")
  # result[:neither] = string.count("^a-zA-Z")
  # OR
  result = {}
  characters = string.chars
  result[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  result[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  result[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
