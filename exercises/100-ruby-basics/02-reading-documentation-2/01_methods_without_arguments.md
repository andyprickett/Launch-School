String#upcase does not take any arguments, and returns a new string object (instead of modifying the object that it is called on).

So, "xyz".upcase would return (create) a new string object, "XYZ".

Pointing to it with a variable would allow us to use it again:

upcased = "xyz".upcase
  => "XYZ"



