['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# based on the docs, if the block evaluates to true (or truthy), then 1 will
# be added to the return value provided by count
