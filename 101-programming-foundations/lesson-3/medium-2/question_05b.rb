# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green"
  # T             || T               = T
  # T             || F               = T
  # F             || T               = T
  # F             || F               = F
end
