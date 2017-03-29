advice = "Few things in life are as important as house training your pet dinosaur."

p advice.match('Dino') {|m| "#{m} was found!"}
p advice.match('dino') {|m| "#{m} was found!"}
