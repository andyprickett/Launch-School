# Hours in a year

puts "Hours in a regular, non-leap year: #{365 * 24}"

# Minutes in a decade

puts "Minutes in a decade, including two leap years: #{((10 * 365) + 2) * (24 * 60)}"

# My age in seconds

puts "My age on my 46th birthday in seconds: #{(46 * (365 + 12)) * ((24 * 60) * 60)}"

# Author's age, no leap years accounted for

puts "Our dear author's age: #{1160000000/(365 * 24 * 60 * 60)}"
