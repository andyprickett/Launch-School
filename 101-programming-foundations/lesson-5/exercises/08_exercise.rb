hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u)

hsh.each do |_, word_array|
  word_array.each do |word|
    chars = word.chars
    vowels.each do |vowel|
      puts vowel if chars.include?(vowel)
    end
  end
end

puts "____________"
# or, better:

vowels = 'aeiou'
hsh.each do |_, word_array|
  word_array.each do |word|
    word.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end


