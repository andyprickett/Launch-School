a = [1, 4, 8, 11, 15, 19]

element = a.bsearch {|x| x > 8}

=> 11

Binary Search requires a block, and that block can be formatted two different
ways for two different results.

In this case, we just want the first element value that satisfies the block.
The block returns true or false to the method, looking at each index and
evaluating whether or not it is higher or lower than the index of the element
who's value satisfies the condition. Then the method itself returns the element 
value.
