ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

if ages.any? { |k, v| k == 'Spot' }
  puts "Spot is in the hash."
else
  puts "Spot is not in the hash."
end
if ages.has_key?('Spot')
  puts "Spot is in the hash."
else
  puts "Spot is not in the hash."
end
if ages.include?('Spot')
  puts "Spot is in the hash."
else
  puts "Spot is not in the hash."
end
if ages.key?('Spot')
  puts "Spot is in the hash."
else
  puts "Spot is not in the hash."
end
if ages.member?('Spot')
  puts "Spot is in the hash."
else
  puts "Spot is not in the hash."
end
