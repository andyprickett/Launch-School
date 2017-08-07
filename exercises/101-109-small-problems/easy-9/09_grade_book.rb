GRADE_SCALE = {
  0..59   => 'F',
  60..69  => 'D',
  70..79  => 'C',
  80..89  => 'B',
  90..100 => 'A'
}

def get_grade(score_1, score_2, score_3)
  # scores = [score_1, score_2, score_3]
  # average = scores.reduce(:+) / scores.size
  # GRADE_SCALE.detect { |grade_range, _| grade_range === average }.last
  # OR
  average = (score_1 + score_2 + score_3)/3

  case average
  when 90..Float::INFINITY then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(99, 105, 110) #== "D"
