if false
  greeting = “hello world”
end

greeting

# greeting is nil, because it was initialized inside of an if block,
# and that if block wasn't executed (so it didn't get the value of 
# 'hello world').
