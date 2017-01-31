

def cappie(string_in)
  if string_in.length > 10
    string_in = string_in.upcase
  else
    string_in = string_in
  end
end

puts cappie("Andy Prickett")
puts cappie("Joe Blow")