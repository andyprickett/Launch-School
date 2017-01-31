a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

1) Error (index outside of array)
2) 'beats me' (message argument used since index outside of array)
3) 49 (block used since index outside of array)
