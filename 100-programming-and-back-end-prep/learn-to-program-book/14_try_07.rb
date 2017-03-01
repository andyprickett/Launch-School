$indent = 0

def log(blockname, &block)
  puts ' ' * $indent + "Now starting #{blockname}..."
  $indent += 2
  came_back = block.call
  $indent -= 2
  puts ' ' * $indent + "#{blockname} returned: #{came_back}"
end

log('outer') do
  puts ' ' * ($indent - 2) + "In the outer..."
  log('First') do
    puts ' ' * ($indent - 2) + "In the First..."
    log('Second') do
      puts ' ' * ($indent - 2) + "In the Second..."
      'here I am 2'
    end
    'where am I 1?'
  end
  log('Third') do
    puts ' ' * ($indent - 2) + "In the Third..."
    'me too 3'
  end
  'wow'
end
