def music_shuffle(filenames)
  # We don't want a perfectly random shuffle, so let's instead do a
  # shuffle like card-shuffling. Let's shuffle the "deck" twice, then
  # cut it once. That's not enough times to make a perfect shuffle, 
  # but it does mix things up a bit.
  # Before we do anything, let's actually *sort* the input, since
  # we don't know how shuffled it might already be, and we don't
  # want it to be *too* random.

  filenames        = filenames.sort
  filenames_length = filenames.length

  # Now we shuffle twice
  2.times do
    l_idx = 0                  # index of next card in left pile
    r_idx = filenames_length/2 # index of next card in right pile
    shuffled = []

    # NOTE: If we have an odd number of "cards", then the right pile will
    #       be larger.
    while shuffled.length < filenames_length
      if shuffled.length % 2 == 0 # If 'shuffled' is currently even-lengthed
                                  # take card from right pile.
        shuffled.push(filenames[r_idx])
        r_idx += 1
      else
        # Take card from left pile.
        shuffled.push(filenames[l_idx])
        l_idx += 1
      end
    end
    # Replace 'filenames' with the shuffled version.
    filenames = shuffled
    # Do it again, or move on.
  end

  # Now, cut the deck...
  shuffled_and_cut = []        # Final array to push into.
  cut = rand(filenames_length) # Randomly pick a spot to cut the deck at.
  idx = 0

  while idx < filenames_length
    shuffled_and_cut.push(filenames[(idx + cut) % filenames_length]) # Start
    # at index of 'cut', and then wrap around to 0 and back up to 'cut' - 1.
    idx += 1
  end
  shuffled_and_cut
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz',
         'foo/bar']

puts(music_shuffle(songs))
