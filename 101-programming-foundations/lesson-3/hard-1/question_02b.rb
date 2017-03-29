greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings  # => {:a=>"hi there"}

# informal_greeting is pointing to the mutable object 'hi' that is accessed
# by greetings[:a]. so the method << modifies the object that informal_greeting
# points to, and changes it to 'hi there'.
