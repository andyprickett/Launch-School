def shuffle(unshuffled)
  shuffled = []
  while unshuffled.length > 0
    random_index = rand(unshuffled.length)
    # THIS...
    shuffled.push(unshuffled.delete_at(random_index))
=begin  # OR...
    current_index = 0
    new_unshuffled = []
    # Go through the 'unshuffled' array, and if the item's index matches
    # the randomly chosen one, then put that in the 'shuffled' array.
    # If not, then put it in the 'new_unshuffled' array.
    unshuffled.each do |item|
      if current_index == random_index
        shuffled.push(item)
      else
        new_unshuffled.push(item)
      end
      current_index += 1 # Increment to check the next index
    end
    unshuffled = new_unshuffled # Replace 'unshuffled' array with 'new_...'
=end
  end
  shuffled
end

all_mp3s = shuffle(Dir['**/*.mp3'])

File.open('playlist.m3u', 'w') do |f|
  all_mp3s.each do |mp3|
    f.write(mp3+"\n")
  end
end

puts('Done!')


