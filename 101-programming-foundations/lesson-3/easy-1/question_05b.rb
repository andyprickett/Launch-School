if (10..100).cover?(42)
  puts "42 is between 10 and 100"
else
  puts "42 is not between 10 and 100"
end

if (10..100).cover?(100)
  puts "100 is between 10 and 100 (exclude_end? = false)"
else
  puts "100 is not between 10 and 100 (exclude_end? = false)"
end

if (10...100).cover?(100)
  puts "100 is between 10 and 100 (exclude_end? = true)"
else
  puts "100 is not between 10 and 100 (exclude_end? = true)"
end

# cover?, not include?
