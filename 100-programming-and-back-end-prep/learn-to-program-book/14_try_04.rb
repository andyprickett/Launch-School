# modified to turn on or off with 'just one word'

def profile(block_description, do_it, &block)
  if do_it
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile('25000 doublings', true) do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # That's the number of digits in this huge number
end

profile('count to a million', false) do
  number = 0
  10000000.times do
    number = number + 1
  end
  
  puts "#{number.to_s.length} digits"
  # That's the number of digits in this huge number
end
