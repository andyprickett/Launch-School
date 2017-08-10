LETTER_BLOCKS = [
                  ['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
                  ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
                  ['V', 'I'], ['L', 'Y'], ['Z', 'M']
                ]

def block_word?(string)
  spelled = true
  spelled = false if string == ''
  LETTER_BLOCKS.each do |block|
    match_count = 0
    match_count += string.upcase.count(block[0])
    match_count += string.upcase.count(block[1])
    spelled = false if match_count > 1
  end
  spelled
  # OR
  # BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

  # up_string = string.upcase
  # BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

p block_word?('BATCH') == true
p block_word?('BATCBH') == false
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('') == false
p block_word?('bo') == false
p block_word?('x') == true


