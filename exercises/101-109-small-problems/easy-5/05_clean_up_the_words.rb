def cleanup(string)
  # string.gsub(/[^a-z]/, ' ').gsub(/\s{2,}/, ' ')
  # OR
  # string.gsub(/[^a-z]/, ' ').squeeze(' ')
  # OR
  string = string.chars.map do |char|
    if [*'a'..'z'].include?(char.downcase)
      char
    else
      ' '
    end
  end

  prev_char = nil
  final_string = []
  string.each do |char|
    if char != ' '
      final_string << char
    else
      final_string << char if prev_char != ' '
    end
    prev_char = char
  end
  final_string.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
