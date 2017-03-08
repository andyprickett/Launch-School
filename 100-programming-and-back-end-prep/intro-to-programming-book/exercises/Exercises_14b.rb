contact_data = [["joe@email.com", "123 Main St.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["pat@email.com", "250 What Ln.", "765-265-0987"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Pat Tucker" => {}}

fields = [:email, :address, :phone]

contacts.each do |name, data|
  fields.each do |field|
    data[field] = contact_data.first[fields.index(field)]
  end
  contact_data.shift
end

contacts.each do |name, data|
  puts "#{name}'s info--> email: #{data[:email]}, address: #{data[:address]}, phone: #{data[:phone]}"
end
