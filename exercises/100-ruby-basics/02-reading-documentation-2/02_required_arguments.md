a = %w(a b c d e)

Array#insert takes an index argument, and any number of object arguments you
want to insert before the element with the given index. It returns the same
array it has operated on.

So,

a.insert(3, 5, 6, 7)
       indx|objects...

Before index 3, insert new elements 5, 6, and 7.

