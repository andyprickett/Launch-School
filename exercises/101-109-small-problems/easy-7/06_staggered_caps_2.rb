def staggered_case(string, first_cap: true, ignore_nonaplpha: true)
  staggered_string = ''
  need_upper = first_cap
  string.chars.each do |char|
    if /[^A-Za-z]/.match(char) && ignore_nonaplpha
    # OR
    # if char =~ /[^a-z]/i  
      staggered_string += char
    else
      if need_upper
        staggered_string += char.upcase
      else
        staggered_string += char.downcase
      end
      need_upper = !need_upper
    end
  end
  staggered_string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('I Love Launch School!', first_cap: false) == 'i LoVe LaUnCh ScHoOl!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
p staggered_case('ignore 77 the 444 numbers', ignore_nonaplpha: false) == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('ignore 77 the 444 numbers', first_cap: false, ignore_nonaplpha: false) == 'iGnOrE 77 tHe 444 nUmBeRs'
