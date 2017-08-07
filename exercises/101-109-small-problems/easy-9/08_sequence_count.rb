def sequence(count, first_number)
  sequence_list = []
  1.upto(count) do |multiplier|
    sequence_list << first_number * multiplier
  end
  sequence_list
  # OR
  # (1..count).map { |multiplier| multiplier * first_number }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
