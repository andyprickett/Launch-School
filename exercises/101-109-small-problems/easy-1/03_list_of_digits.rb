def digit_list(n)
  # Create an output array:
  out_array = []
  loop do
    # divmod n by 10, save result in 'divided':
    divided = n.divmod(10)
    # Place the remainder of the divmod into the front of the out_array.
    # If n has only one digit at this point, this will be how it gets into
    # the out_array (either it's the last digit to be the result of the
    # divmod quotient, or there was only one to begin with):
    out_array.unshift(divided[1])
    # If n had only one digit, then the remainder of divmod and n will be
    # the same right now, so we can be done:
    break if divided[1] == n # (or if divided[0] is == 0)
    # Otherwise, n is now going to be the quotient from this divmod, and we'll
    # do it all again.
    n = divided[0]
  end
  p out_array
  out_array
end

# OR n.to_s.chars.map { |char| char.to_i } / .map(&:to_i)

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
