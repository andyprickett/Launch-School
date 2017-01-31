guitars = {
  jazzmaster: 'gold',
  stratocaster: 'tobacco burst',
  telecaster: 'black',
  gretsch: 'white',
  jazzbass: 'white'
}
puts "List of guitars:"
guitars.each_key { |k| puts k}
puts "List of guitar colors:"
guitars.each_value { |v| puts v}
puts "List of guitars and their colors:"
guitars.each_pair { |k, v| puts "The #{k} is #{v}."}