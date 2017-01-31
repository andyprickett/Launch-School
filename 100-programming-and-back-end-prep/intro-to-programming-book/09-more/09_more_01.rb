sources = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def has_lab?(string)
string_low = string.downcase
  if string_low =~ /lab/
    puts "'#{string}'' has 'lab' in it."
  else
    puts "No 'lab' in '#{string}.'"
  end
end

sources.each do |source|
  has_lab?(source)
end