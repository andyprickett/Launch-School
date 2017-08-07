def center_of(string)
  center = ''
  center << string[string.size / 2]
  if string.size % 2 == 0
    center.prepend(string[(string.size / 2) - 1])
  end
  center
  # OR
  # center_index = string.size / 2
  # if string.size.odd?
  #   string[center_index]
  # else
  #   string[center_index -1, 2]
  # end
end

p center_of('I love ruby') #== 'e'
p center_of('Launch School') #== ' '
p center_of('Launch') #== 'un'
p center_of('Launchschool') #== 'hs'
p center_of('x') #== 'x'
p center_of('xy') #== 'xy'
