def remove_vowels(array_of_strings)
  output_array = []
  array_of_strings.each do |string|
    output_array << string.delete("aeiouAEIOU")
  end
  output_array
  # OR (much better!!!!!! TRANSFORMATION)
  # array_of_strings.map { |string| string.delete("aeiouAEIOU") }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
