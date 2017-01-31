contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def fill_contacts(contacts, contact_data, arr_index)
  contacts[:email] = contact_data[arr_index][0]
  contacts[:address] = contact_data[arr_index][1]
  contacts[:phone] = contact_data[arr_index][2]
end


fill_contacts(contacts["Joe Smith"], contact_data, 0)
fill_contacts(contacts["Sally Johnson"], contact_data, 1)

p contacts["Joe Smith"]
p contacts["Sally Johnson"]