def fizzbuzz(starting, ending)
  output_array = []
  starting.upto(ending) do |n|
    output_array << fizzbuzz_value(n)
  end
  puts output_array.join(', ')
end

def fizzbuzz_value(n)
  if (n % 3 == 0) && (n % 5 == 0)
    'FizzBuzz'
  elsif (n % 3 == 0)
    'Fizz'
  elsif (n % 5 == 0)
    'Buzz'
  else
    n
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
