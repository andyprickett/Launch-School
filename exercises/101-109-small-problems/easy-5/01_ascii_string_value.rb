def ascii_value(string)
  sum = 0
  string.each_char do |c| 
    sum += c.ord
  end
  p string.ord.chr == string
  sum
end



p ascii_value('Four score') == 984
puts "-------"
p ascii_value('Launch School') == 1251
puts "-------"
p ascii_value('a') == 97
puts "-------"
p ascii_value('') == 0
