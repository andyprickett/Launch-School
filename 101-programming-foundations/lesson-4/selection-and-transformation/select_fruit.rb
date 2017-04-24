produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(basket)
  selected_fruit = {}
  basket_keys = basket.keys
  counter = 0

  loop do
    break if counter == basket_keys.size

    current_key = basket_keys[counter]
    current_value = basket[current_key]

    if current_value == 'Fruit'
      selected_fruit[current_key] = current_value
    end

    counter += 1
  end
  selected_fruit
end

p select_fruit(produce)
