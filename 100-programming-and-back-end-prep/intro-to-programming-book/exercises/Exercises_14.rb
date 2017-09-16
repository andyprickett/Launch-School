contact_data = [["joe@email.com", "123 Main St.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["pat@email.com", "250 What Ln.", "765-265-0987"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Pat Tucker" => {}}

contacts_keys = [:email, :address, :phone]

 i = 0
 j = 0

contacts.each_pair do |contact, data|
  contacts_keys.each do |key|
    data[key] = contact_data[i][j]
    j += 1
  end
  i += 1
  j = 0
end

contacts.each do |name, data|
  puts "#{name}'s info--> email: #{data[:email]}, address: #{data[:address]}, phone: #{data[:phone]}"
end
