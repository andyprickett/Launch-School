def penultimate(string)
  # string.strip.rpartition(/\p{Blank}{1,}\p{Graph}{1,}/)[0].split.last
  # string.split[(string.split.size / 2)].to_s
  where_to_stop = string.split.size/2
  # where_to_stop = string.split.size -2
  string_array = string.split
  return_string = string
  if string_array.size > 1
    return_string = string_array.slice(0..where_to_stop).last
  end
  return_string
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'
p penultimate('Launch School is really great!') #== 'is'
p penultimate('duh')
p penultimate('')
p penultimate(' ')
