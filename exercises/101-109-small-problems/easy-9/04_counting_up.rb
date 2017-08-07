def sequence(n)
  # sequence = []
  # 1.upto(n) do |i|
  #   sequence << i
  # end
  # sequence
  (1..n.abs).map { |i| i }
  # OR
  # (1..n).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1) == [1]
