def xor?(bool_1, bool_2)
  !(bool_1 && bool_2) && (bool_1 || bool_2)
  # OR
  # return true if value1 && !value2
  # return true if value2 && !value1
  # false
  # OR
  # (value1 && !value2) || (value2 && !value1)
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
