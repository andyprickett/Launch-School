title = "Table of Contents"

chapters = [
  ["Getting Started", 1],
  ["Numbers", 9],
  ["Letters", 13],
  ["Strings", 24]
]

puts (title.center(54))
puts ''
chapter = 0
chapters.each do |chapter_info|
  chapter += 1
  puts('Chapter'.ljust(8) +
    chapter.to_s.rjust(3) +
    ':'.ljust(5) +
    chapter_info[0].ljust(30) +
    'page'.ljust(4) +
    chapter_info[1].to_s.rjust(4))
end
