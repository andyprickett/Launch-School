def transpose(matrix)
  tr_cols = matrix.size    # x
  tr_rows = matrix[0].size # y
  transposed = Array.new(tr_rows) { Array.new }
  tr_rows.times do |row|
    tr_cols.times do |col|
      transposed[row][col] = matrix[col][row]
    end
  end
  transposed
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
