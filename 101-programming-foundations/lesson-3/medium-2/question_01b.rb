def fun_with_ids
  # name-variable assigned to reference the immutable object 42
  a_outer = 42
  # name-variable assigned to reference the mutable object "forty two"
  b_outer = "forty two"
  # name-variable assigned to reference the mutable object [42]
  c_outer = [42]
  # name-variable assigned to reference the immutable object 42
  d_outer = c_outer[0]

  # name-variable assigned to reference the object id of the immutable object 42 referenced by the name-variable a_outer
  a_outer_id = a_outer.object_id
  # name-variable assigned to reference the object id of the mutable object "forty two" referenced by the name-variable b_outer
  b_outer_id = b_outer.object_id
  # name-variable assigned to reference the object id of the mutable object [42] referenced by the name-variable c_outer
  c_outer_id = c_outer.object_id
  # name-variable assigned to reference the object id of the immutable object 42 referenced by the name-variable d_outer
  d_outer_id = d_outer.object_id

  # 42
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  # "forty two"
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  # [42]
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  # 42, with same object id as a_outer_id
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"

  1.times do
    # another name-variable assigned to reference the object id of the immutable object 42 referenced by the name-variable a_outer
    a_outer_inner_id = a_outer.object_id
    # another name-variable assigned to reference the object id of the mutable object "forty two" referenced by the name-variable b_outer
    b_outer_inner_id = b_outer.object_id
    # another name-variable assigned to reference the object id of the mutable object [42] referenced by the name-variable c_outer
    c_outer_inner_id = c_outer.object_id
    # another name-variable assigned to reference the object id of the immutable object 42 referenced by the name-variable d_outer
    d_outer_inner_id = d_outer.object_id

    # these should all be the same as each other
    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block.\n\n"

    # name-variable reassigned to reference the immutable object 22
    a_outer = 22
    # name-variable reassigned to reference the mutable object "thirty three"
    b_outer = "thirty three"
    # name-variable reassigned to reference the mutable object [42]
    c_outer = [44]
    # name-variable reassigned to reference the immutable object 44
    d_outer = c_outer[0]

    # 22 / original object id of a-outer / new object id of the immutable object 22
    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    # "thirty three" / original object id of b_outer / new object id of the mutable object "thirty three"
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    # [44] / original object id of c_outer / new object id of the mutable object [44]
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    # 44 / original object id of d_outer / new object id of the immutable object 44
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"

    # assign new name-variables to reference the same objects as the 'outer' variables
    a_inner = a_outer
    b_inner = b_outer
    c_inner = c_outer
    d_inner = c_inner[0]

    # assign new name-variables to reference the object id's of the 'outer' variables
    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id

    # 22 / same id's
    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    # "thirty three" / same id's
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    # [44] / same id's
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    # 44 / same id's
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n"
  end

  # 22 / original object id of a_outer / object id of 22
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  # "thirty three" / original object id of b_outer / object id of "thirty three"
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  # [44] / original object id of c_outer / object id of [44]
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  # 44 / original object id of d_outer / object id of 44
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"

  # these are not accessible outside of the block, all will print rescue message
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue puts "ugh ohhhhh"
end

fun_with_ids

