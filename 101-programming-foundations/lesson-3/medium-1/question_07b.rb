answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34, the method doesn't mutate the passed in argument, and it couldn't
# anyway, because numbers are immutable.
