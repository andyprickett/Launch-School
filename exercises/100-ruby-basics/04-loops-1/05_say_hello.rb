say_hello = true
# add counter variable (we have said "Hello!" zero times thus far)
said_times = 0

while say_hello
  puts 'Hello!'
  # increment counter variable to say 'we have said "Hello!"'
  said_times += 1
  # add condition based on counter value, change loop boolean to false
  # when 'we have said "Hello!" 5 times.
  say_hello = false if said_times == 5
end
