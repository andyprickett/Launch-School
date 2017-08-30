NOUNS = %w[dog cat bear squirrel]
ADJECTIVES = %w[stinky lazy furry happy]
COLORS = %w[red brown green purple]
VERBS = %w[eat bite lick chew]
ADVERBS = %w[noisily questioningly mockingly quickly]
GENDERS = %w[his her]

File.open('01_madlibs_revisited.txt') do |file|
  file.each do |line|
    puts format(line, { noun: NOUNS.sample,
                        adjective: ADJECTIVES.sample,
                        color: COLORS.sample,
                        verb: VERBS.sample,
                        adverb: ADVERBS.sample,
                        gender: GENDERS.sample }
                )
  end
end
