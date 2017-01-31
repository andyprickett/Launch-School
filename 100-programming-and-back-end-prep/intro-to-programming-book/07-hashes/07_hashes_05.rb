# has_value?

guitars = {
  jazzmaster: 'gold',
  stratocaster: 'tobacco burst',
  telecaster: 'black',
  gretsch: 'white',
  jazzbass: 'white'
}

puts "List of guitars and their colors:"
guitars.each_pair { |k, v| puts "The #{k} is #{v}."}
puts "Are any of the guitars black?"
if guitars.has_value?('black')
  puts "Yes, there is a black guitar."
else
  puts "No, there isn't a black guitar."
end
