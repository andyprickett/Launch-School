def swapcase(string)
  output = string.chars.map do |char|
             if /\p{Upper}/.match(char) # OR char =~ /[A-Z]/
               char.downcase
             elsif /\p{Lower}/.match(char) # OR char =~ /[a-z]/
               char.upcase
             else
               char
             end
           end
  output.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
