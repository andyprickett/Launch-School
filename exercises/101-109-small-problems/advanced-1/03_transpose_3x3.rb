def transpose(matrix)
  max = matrix.size 
  transposed = Array.new(max) { Array.new }
  max.times do |x|
    max.times do |y|
      transposed[x][y] = matrix[y][x]
    end
  end
  transposed
end

def transpose!(matrix)
  max = matrix.size
  
  max.times do |x|
    x.upto(max - 1) do |y|
      matrix[x][y], matrix[y][x] = matrix[y][x], matrix[x][y]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)
p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

transpose!(matrix)
p matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
