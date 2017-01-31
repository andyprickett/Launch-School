s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
puts s.split(',').inspect
puts s.split(',', 2).inspect

Split returns an Array of elements, each element representing one of the 
substrings that are the result of the split.

First example: will split the string with the default setting of nil or white space since no argument was provided. So, it will produce:
["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]

Second example: will split the string where there is a comma, since that is 
the provided argument to the method. So, it will produce:
["abc def ghi", "jkl mno pqr", "stu vwx yz"]

Third example: will split at the comma again, but there is a limit argument of
2, so there will only be 2 total elements in the resulting array. After the
first split, everything else in the source string will be the 2nd element.
So, it will produce:
["abc def ghi", "jkl mno pqr,stu vwx yz"]
