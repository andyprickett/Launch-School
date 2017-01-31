iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  # add condition to break to allow 5 iterations
  break if iterations == 5
  # increment the iterations variable
  iterations += 1
end
