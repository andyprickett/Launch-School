def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# This will print 1, because the if condition will always be true, so the
# next line will always be the last line evaluated.
