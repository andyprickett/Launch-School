def letter_percentages(string)
  hash_out = {}
  hash_out[:lowercase] = string.count("a-z") * 100 / string.size.to_f
  hash_out[:uppercase] = string.count("A-Z") * 100 / string.size.to_f
  hash_out[:neither] = string.count("^a-zA-Z") * 100 / string.size.to_f
  hash_out

end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('aB1 ')
