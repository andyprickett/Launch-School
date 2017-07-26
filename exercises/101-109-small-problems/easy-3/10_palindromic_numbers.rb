# def palindromic_number?(number)
#   original_number = number.to_s
#   number_reversed = []
#   while number > 0
#     number, remainder = number.divmod(10)
#     number_reversed << remainder
#   end
#   original_number == number_reversed.join
# end
def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number)
end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true
p palindromic_number?(050) == true
