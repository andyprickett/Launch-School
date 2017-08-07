def staggered_case(string, first_cap: true)
  staggered_string = ''
  # string.chars.each_with_index do |char, index|
  #   if /[^A-Za-z]/.match(char)
  #     staggered_string << char
  #   elsif index.even?
  #     staggered_string << char.upcase
  #   else
  #     staggered_string << char.downcase
  #   end
  # end
  # OR (better)
  # need_upper = true
  need_upper = first_cap
  string.chars.each do |char|
    if need_upper
      staggered_string += char.upcase
    else
      staggered_string += char.downcase
    end
    need_upper = !need_upper
  end
  staggered_string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('I Love Launch School!', first_cap: false) == 'i lOvE LaUnCh sChOoL!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
