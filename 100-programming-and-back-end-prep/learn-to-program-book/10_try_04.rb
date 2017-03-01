def dictionary_sort(array)
  recursive_sort(array, []) # Feed in the original array and a dummy
end

def recursive_sort(unsorted, sorted) # Feed in whatever is currently
  # the unsorted array (all that will go down to none) and whatever is
  # currently the sorted array (none that grows to all)
  # Set a condition to stop the recursion, no more left in the unsorted
  # array to test, so we are done and return the sorted array
  if unsorted.length <= 0
    return sorted
  end
  # Start with one element (just whatever is at the end of the array)
  # and make it the 'smallest'
  smallest = unsorted.pop
  # Holding array for elements that test as 'not smallest'
  still_unsorted = []

  unsorted.each do |tested_object|
    if tested_object.downcase < smallest.downcase # If smallest isn't the smallest
      still_unsorted.push(smallest) # Push it to the array for 'not smallest's
      smallest = tested_object # Reset smallest to the element that just 
                               # tested out as smaller than than the
                               # previous smallest
    else
      # Otherwise, smallest is currently the smallest, so push tested_object
      # to the holding array for still unsorted
      still_unsorted.push(tested_object)
    end
  end
  # So now, 'smallest' points to the one smallest element in the unsorted
  # array, so we push that little guy to the sorted array.
  sorted.push(smallest)
  # One down, now let's call this method again, but this time feeding it our
  # leftovers array as the unsorted batch to start with (which will have one
  # less element each time this recurses, and the sorted array will build
  # up by one element each time)
  recursive_sort(still_unsorted, sorted)
end

puts(dictionary_sort(['Can', 'feel', 'singing', 'Like', 'a', 'can', 'Would']))

