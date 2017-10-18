1. what is != and where should you use it?

"not equal to", and you should use it when you want to compare
two things and check to see if they are not equal.

2. put ! before something, like !user_name

this evaluates to /returns the opposite boolean value of the truthiness or 
falsiness of the object

3. put ! after something, like words.uniq!

it won't work on just anything, but if it is a method that has the '!' in
the name, then it will use that version (denotes that the method mutates the caller).

4. put ? before something

in a ternary operation, it comes before the 'then/else' portion.
otherwise, just a letter.

5. put ? after something

if it is part of a method name (as a letter), then it tends to signify that
the return of the method is a boolean (but not necessarily). in a ternary statement, it comes after the condition. otherwise, just
a letter.

6. put !! before something, like !!user_name

one bang flips the truthiness or falsiness of the value and returns the appropriate 
boolean, the second bang then does that to the first boolean. so the result
is the boolean nature of the original value.

