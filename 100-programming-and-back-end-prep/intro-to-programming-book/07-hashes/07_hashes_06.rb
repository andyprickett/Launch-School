words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

ana_hash = {}

words.each { |word|
  ana_key = word.split('').sort.join
  if ana_hash.has_key?(ana_key)
    ana_hash[ana_key].push(word)
  else
    ana_hash[ana_key] = [word]
  end
}

ana_hash.each { |k, v|
  p v
}