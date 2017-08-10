def toggle_lights(lights)
  # light_array = Array.new(n, 0) # setup
  (lights.size).times do |round| # rounds 1..n (or, 0..(n-1))
    lights.each_with_index do |light, index|
      if (index + 1) % (round + 1) == 0
        light == 0 ? lights[index] = 1 : lights[index] = 0
      end
    end
  end
end

def light_results(lights)
  on_results = []
  lights.each_with_index do |light, index|
    if light == 1
      on_results << (index + 1)
    end
  end
  off_results = []
  lights.each_with_index do |light, index|
    if light == 0
      off_results << (index + 1)
    end
  end
  light_string(on_results, off_results)
end

def light_string(on, off)
  off_half = case off.size
             when 0
               "No lights are"
             when 1
               "Light #{off[0]} is"
             else
               "Lights #{join_and(off)} are"
             end
  on_half  = case on.size
             when 0
               "none are on."
             when 1
               "#{on[0]} is on."
             else
               "#{join_and(on)} are on."
             end
  off_half + ' now off; ' + on_half
end

def join_and(array)
  case 
  when array.size == 2
    array.join(' and ')
  when array.size >= 3
    array[0..-2].join(', ') + ', and ' + array[-1].to_s
  end
end

lights = Array.new(10, 0) # setup
toggle_lights(lights)
# p on_lights(lights)
p light_results(lights)
