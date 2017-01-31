def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

This method can be supplied 2-4 arguments.
When defaults are in the middle of positional arguments:
Non-default positional arguments are filled first (before keyword and block 
arguments), left-to-right, so in this case the first argument of 4 goes to the
first parameter 'a'. Then the last argument of 6 goes to the last parameter
'd'. The argument in the middle (5) will be supplied to the default parameters,
left-to-right. Since there is only one argument and two parameters, 'b' will be
overwritten with 5, but 'c' will use its default of 3.

Print out will be: [4, 5, 3, 6]
