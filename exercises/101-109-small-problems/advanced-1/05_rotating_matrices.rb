def rotate90(matrix)
  old_rows = matrix.size
  old_cols = matrix.first.size
  new_matrix = Array.new(old_cols) { Array.new(old_rows) }
  offset =  old_rows - 1

  old_cols.times do |old_col|
    old_rows.times do |old_row|
      new_matrix[old_col][(old_row - offset).abs] = matrix[old_row][old_col]
    end
  end
  new_matrix
end

def rotate(matrix, degrees=90)
  return matrix if degrees == 360
  new_rows = matrix.first.size
  new_cols = matrix.size
  case degrees
  when 180
    new_rows, new_cols = new_cols, new_rows
    matrix = matrix.reverse
  when 270
    matrix = matrix.reverse.map { | row | row.reverse }
  end
  new_matrix = []
  
  new_rows.times do |row|
    new_row = (0...new_cols).map do |col|
      degrees == 180 ? matrix[row][col] : matrix[col][row]
    end
    new_matrix << new_row.reverse
  end
  new_matrix
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# new_matrix1 = rotate(matrix1, 180)
new_matrix2 = rotate(matrix2, 270)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2
