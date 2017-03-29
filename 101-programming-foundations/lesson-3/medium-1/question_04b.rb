def rolling_buffer1(buffer, max_buffer_size, new_element)
  # append new_element to buffer array (mutating original).
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  # create new array 'buffer' that is the concatenation of the
  # input array and new_element. original input_array is not
  # mutated.
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
