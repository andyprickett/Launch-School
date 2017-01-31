def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# This will print 0 1 2 nil. The return doesn't take a value, and the p
# instead of puts let's us see it (nil).
