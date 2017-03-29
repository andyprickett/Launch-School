1. what is != and where should you use it?

"not equal to", and you should use it when you want to compare
two things and check to see if they are not equal.

2. put ! before something, like !user_name

this evaluates to /returns the boolean false

3. put ! after something, like words.uniq!

it won't work on just anything, but if it is a method that has the '!' in
the name, then it will use that version.

4. put ? before something

if used in a ternary operation, then it comes before the 'then/else' portion.
otherwise, just a letter.

5. put ? after something

if it is part of a method name (as a letter), then it tends to signify that
the return of the method is a boolean (but not necessarily). otherwise, just
a letter.

6. put !! before something, like !!user_name

one bang negates the truthiness or falsiness of the value and returns a 
boolean, the second bang then does that to the first boolean. so the result
is the boolean nature of the original value.

