def short_long_short(string1, string2)
  if string1.size <= string2.size
    # short = string1
    # long = string2
    string1 + string2 + string1
  else
    # short = string2
    # long = string1
    string2 + string1 + string2
  end
  # short + long + short
end

# def short_long_short(string1, string2)
#   arr = [string1, string2].sort_by { |el| el.length }
#   arr.first + arr.last + arr.first
# end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
p short_long_short('abc', 'def') == 'abcdefabc'
