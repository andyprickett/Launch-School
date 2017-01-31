require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

First, we had to require 'date' because it is in the Standard Library, not the
Core Library.

1) -4712-01-01 # All defaults
2) 2016-01-01  # Year argument provided, day and month defaults
3) 2016-05-01  # Year and month arguments provided, day default
4) 2016-05-13  # Year, month, day arguments provided, start default (Date::ITALY)

Nested defaults, meaning you can't specify the day argument without first 
specifying the year and month arguments.
