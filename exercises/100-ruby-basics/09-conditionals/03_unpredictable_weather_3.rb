sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is so bright!"
end

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

p sun
