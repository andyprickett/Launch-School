What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

Nothing will pring to the screen because the return in the method come before the puts.