def stars_and_spaces(number)
  case number
  when 1
    '*'
  else
    line = Array.new(number, ' ')
    line[0], line[-1] = '*', '*'
    line.join
  end
end

def print_row(grid_size, distance_from_center)
  # number_of_stars = grid_size - (2 * distance_from_center)
  number_of_stars_and_spaces = grid_size - (2 * distance_from_center)
  # stars = '*' * number_of_stars
  line = stars_and_spaces(number_of_stars_and_spaces)
  puts line.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# def diamond(n)
#   mid = (n / 2.0).ceil
#   diamond_array = []
#   1.upto(n) do |row|
#     line_string = ''
#     line_string   << ' ' * (mid - row).abs
#     line_string   << '*' * (n - ((mid - row).abs * 2)) 
#     line_string   << ' ' * (mid - row).abs
#     diamond_array << line_string
#   end
#   puts diamond_array
# end

diamond(5)
diamond(13)
diamond(9)
