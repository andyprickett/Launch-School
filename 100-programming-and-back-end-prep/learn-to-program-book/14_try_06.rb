def log(blockname, &block)
  puts "Now starting #{blockname}..."
  came_back = block.call
  puts "#{blockname} returned: #{came_back}"
end

log('outer') do
  log('inner 1') do
    'where am I 1?'
  end
  log('inner 2') do
    'here I am 2'
  end
  'wow'
end
