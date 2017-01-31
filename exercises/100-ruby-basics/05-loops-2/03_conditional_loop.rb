process_the_loop = [true, false].sample

if process_the_loop # the only options for this variable: boolean conditions
  # if true, run the loop
  loop do
    puts "The loop was processed!"
    break
  end
  # if false, tell us the loop wasn't processed
else
  puts "The loop wasn't processed!"
end

# check to make sure...
p process_the_loop
