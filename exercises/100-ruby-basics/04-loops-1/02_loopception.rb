loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    # add 'break' here to stop this loop after 1st iteration
    break
  end
  # add 'break' here to stop the outer loop after 1st iteration
  break
end

puts 'This is outside all loops.'
