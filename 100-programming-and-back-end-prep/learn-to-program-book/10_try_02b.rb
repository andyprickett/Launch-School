
def sort(unsorted)
  sorted = []
  while unsorted.length > 0 # While the unsorted array still has members
    smallest = unsorted.pop # pop the last element into 'smallest'
    still_unsorted = [] # Reset 'still_unsorted' array to hold not-smallests
    # Go through each element of unsorted. If it's smaller than 'smallest'
    # it becomes the new 'smallest'. The not-smaller element gets pushed
    # to the 'still_unsorted' array.
    unsorted.each do |tested_object|
      if tested_object < smallest
        still_unsorted.push(smallest)
        smallest = tested_object
      else
        still_unsorted.push(tested_object)
      end
    end
    # Whoever made it here as the final result of 'smallest' gets pushed
    # to the 'sorted' array.
    sorted.push(smallest)
    # The 'unsorted' array gets replaced by the 'still_unsorted' array, it
    # contains everything that wasn't 'smallest'.
    unsorted = still_unsorted
  end
  sorted
end

p (sort(['can', 'feel', 'singing', 'like', 'a', 'can']))
