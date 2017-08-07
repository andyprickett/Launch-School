def buy_fruit(array)
  # out_array = []
  # array.map do |pair|
  #   pair[1].times do
  #     out_array << pair[0]
  #   end
  # end
  # out_array.flatten
  # OR
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
