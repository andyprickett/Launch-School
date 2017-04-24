statement = "The Flintstones Rock"

freq_hash = {}

statement.split.join.chars.sort.each do |char|
  if freq_hash.has_key?(char)
    freq_hash[char] += 1
  else
    freq_hash[char] = 1
  end
end

p freq_hash
