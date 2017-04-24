names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  break if names.empty?
  puts names.shift # or names.pop
end

p names
