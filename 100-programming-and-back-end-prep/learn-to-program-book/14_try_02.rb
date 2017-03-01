# compose method: takes 2 procs and returns a new proc that, when called,
# calls the first proc and passes its result into the second.
def compose(proc1, proc2)
  Proc.new do |x|
    proc2.call(proc1.call(x)) # parenthesis needed so proc1 calls first
  end
end

square_it = Proc.new do |x|
  x * x
end

double_it = Proc.new do |x|
  x + x
end

double_then_square = compose(double_it, square_it)
square_then_double = compose(square_it, double_it)

puts double_then_square.call(5) #Invokes the block, setting the block's 
# parameters to the values in parens.
puts square_then_double.call(5)
