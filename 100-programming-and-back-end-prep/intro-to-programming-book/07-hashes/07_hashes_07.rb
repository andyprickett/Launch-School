x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

p my_hash
p my_hash2

# What's the difference between the two hashes that were created?

# The first uses a symbol for the key, the second uses a variable as the key.
# {:x => "some value"} vs {"hi there" => "some value"}
