def repeater(string)
  dbld_string = ''
  string.each_char do |char|
    dbld_string += (char + char)
    # OR
    # dbld_string << char << char # (this thing again!!)
  end
  dbld_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
