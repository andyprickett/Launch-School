class Array
  # call the block passed in with every other element in the array
  def each_even(&was_a_block__now_a_proc_)
    # We start with "true" because arrays start with 0, which is even.
    is_even = true

    self.each do |object| # self = array, object = element in array
      if is_even
        was_a_block__now_a_proc.call(object)
      end

      # Toggle from even to odd, or odd to even.
      is_even = !is_even
    end
  end

end
# ------------

fruits = ['apple', 'bad apple', 'cherry', 'durian']
fruits.each_even do |fruit| # passing this do/end block into each_even method
  puts "Yum! I just love #{fruit} pies, don't you?"
end

# Remember, we are getting the even-numbered *elements* of the array, 
# which in this case are all odd numbers, because I live only to
# irritate you.
[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end
