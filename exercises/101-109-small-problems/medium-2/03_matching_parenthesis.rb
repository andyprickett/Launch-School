PAIRS = {
          '\(' => '\)',
          '\{' => '\}',
          '\[' => '\]',
          "'"  => "'",
          "\"" => "\""
        }

def balanced?(string)
  # We are assuming no apostrophes are involved, since the problem spec did not
  # indicate that we would need to account for them.
  string = string.gsub(/[^(){}\[\]'"]/, '') # get rid of everything but what we're
                                            # looking for
  if string.count("'\"").odd?
    puts "Unless there was an apostrophe..."
    false
  else
    PAIRS.each do |l, r|
      while string.match(/#{l}#{r}/)
        string.gsub!(/#{l}#{r}/, '')
      end
    end
    string.empty?
  end
  # parens = string.scan(/[\(|\)]/)
  # if parens[0] == ')' || parens[-1] == '('
  #   false
  # else
  #   parens.count('(') == parens.count(')')
  # end
  # OR
  # parens = 0
  # string.each_char do |char|
  #   parens += 1 if char == '('
  #   parens -= 1 if char == ')'
  #   break if parens < 0
  # end
  # parens.zero?
end

p balanced?('What (is) this?') #== true
p balanced?('What is) this?') #== false
p balanced?('What (is this?') #== false
p balanced?('((What) (is this))?') #== true
p balanced?('((What)) (is this))?') #== false
p balanced?('Hey!') #== true
p balanced?(')Hey!(') #== false
p balanced?('What ((is))) up(') #== false
p balanced?("What '{(is)}'\"[up]\"") #== true
