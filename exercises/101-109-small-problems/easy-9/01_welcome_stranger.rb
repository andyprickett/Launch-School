def greetings(name, designation)
  name = name.join(' ')
  title = designation[:title]
  occupation = designation[:occupation]
  puts "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
greetings(['John', 'Doe'], { title: 'Master', occupation: 'Plumber' })
