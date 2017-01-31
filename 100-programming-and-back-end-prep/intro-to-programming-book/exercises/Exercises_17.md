What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

The output will be "These hashes are the same!" because the order the key/value pairs are in within each hash doesn't matter (like it does in an array), and the syntax for defining the pairs is interchangealbe.