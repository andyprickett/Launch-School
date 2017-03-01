def music_shuffle(filenames)
  # Create a new array where the filename array is mapped so that each
  # element is now an array that contains:
  # 1) the full song filename as before
  # 2) an array of the full path split into individual elements at '/'
  songs_and_paths = filenames.map do |s|
    [s, s.split('/')] # [song, [path]]
  end

  tree = {:root => []}

  # Create recursive Proc for putting each song into the tree
  # Trying to get to the place where each song is a hash element that has
  # the song title as the key, and a value that is a hash with a key of
  # :root and a value of the songs full path (as a single array element).
=begin
{:root=>[], 
  "ee"=> {:root=>[],
    "aa"=> {:root=>[],
      "bbb"=>{:root=>["ee/aa/bbb"]},
      "ccc"=>{:root=>["ee/aa/ccc"]},
      "ddd"=>{:root=>["ee/aa/ddd"]}}},
  "AAA"=> {:root=>[],
    "xxxx"=>{:root=>["AAA/xxxx"]},
    "yyyy"=>{:root=>["AAA/yyyy"]},
    "zzzz"=>{:root=>["AAA/zzzz"]}},
  "foo"=>{:root=>[],
    "bar"=>{:root=>["foo/bar"]}}
}
=end
  insert_into_tree = proc do |branch, song, path|
    if path.length == 0 # If the path array has been gone through completely
      branch[:root] << song  # add song full-path to the array that is the 
                             # value associated with :root
    else # delve deeper, there are still elements in 'path'
      sub_branch = path[0] # First element of 'path' array now 'sub_branch'
      path.shift           # Remove that element from 'path' array

      if !branch[sub_branch] # If current sub_branch of branch is non-existent
        branch[sub_branch] = {:root => []} # Start another branch with this
                                           # sub_branch.
      end
      # Recursively call this Proc, building nested hashes of branches
      insert_into_tree[branch[sub_branch], song, path]
    end
  end
  # After defining the above Proc, run it on each element of songs_and_paths.
  songs_and_paths.each{|sp| insert_into_tree[tree, *sp]}

  # recursively:
  #   - shuffle sub-branches (and root)
  #   - weight each sub-branch (and root)
  #   - merge (shuffle) these groups together
  shuffle_branch = proc do |branch|
    shuffled_subs = []

    branch.each do |key, unshuffled|
      shuffled_subs << if key == :root
        unshuffled # At this level, these are all duplicates.
      else
        shuffle_branch[unshuffled]
      end
    end

    weighted_songs = []

    shuffled_subs.each do |shuffled_songs|
      shuffled_songs.each_with_index do |song, idx|
        num = shuffled_songs.length.to_f
        weight = (idx + rand) / num
        weighted_songs << [song, weight]
      end
    end

    weighted_songs.sort_by{|s, v| v}.map{|s, v| s}
  end

  # Call the shuffle_branch Proc above
  shuffle_branch[tree]
end

songs = ['ee/aa/bbb', 'ee/aa/ccc', 'ee/aa/ddd', 'AAA/xxxx', 'AAA/yyyy',
         'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))



