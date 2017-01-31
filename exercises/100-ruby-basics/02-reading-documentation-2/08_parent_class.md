s = 'abc'
puts s.public_methods.inspect

Rewrite this so it only show methods defined or overridden by the String class.
This method doesn't show up in the String class docs, so you must look in the
parent Class docs, in this case Object.

puts s.public_methods(all=false).inspect  (or just 'false')

Print 'all' of them, included methods from all parents? 'false'
