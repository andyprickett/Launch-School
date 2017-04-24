[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# [1, 2, 3]. The last line of the block is truthy, so all elements
# will be selected.
