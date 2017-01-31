a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = a.map { |mult_word|
  mult_word.split(' ')
  }

sing_word = b.flatten

p sing_word