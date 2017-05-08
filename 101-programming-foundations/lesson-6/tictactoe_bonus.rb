require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals
STRATEGIC_SQUARE = 5
FIRST_MOVER = 'choose'.freeze # 'choose', 'player', or 'computer'

def prompt(msg)
  puts "=> #{msg}"
end

def intitialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def who_goes_first?(player_one, match, winner)
  # If we are on match number 0...
  if match.zero?
    # ...then we run the first player decision method to see who goes first.
    choose_first_player(player_one)
  else
    # If we are beyond match 0, then whoever has most recently won
    # a match goes first, *OR* if no matches have been won yet,
    # whoever was the current first player goes first for another match.
    winner
  end
end

def choose_first_player(player_one_constant)
  # If the FIRST_MOVER constant is 'choose'...
  if player_one_constant == 'choose'
    # ...then we ask the user to decide who goes first.
    choice = 0
    available_choices = [1, 2]
    loop do
      prompt "Choose the first player ('1' for you, '2' for me):"
      choice = gets.chomp.to_i
      break if available_choices.include?(choice)
      prompt "Sorry, that's not an option."
    end
    # The method returns whoever the user chose to go first...
    choice == 1 ? 'player' : 'computer'
  else
    player_one_constant
    # ...or the method returns whatever the FIRST_MOVER constant is.
  end
end

def display_first_mover(chosen_first_player)
  system 'clear'
  prompt "* OK, here we go! *"
  if chosen_first_player == 'player'
    prompt "You go first..."
  else
    prompt "I go first..."
  end
  sleep 2
end

# rubocop:disable Metrics/AbcSize
def display_board(board_values, scores)
  display_heading(scores) # see method below
  puts "     |     |"
  puts "  #{board_values[1]}  |  #{board_values[2]}  |  #{board_values[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_values[4]}  |  #{board_values[5]}  |  #{board_values[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{board_values[7]}  |  #{board_values[8]}  |  #{board_values[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def display_heading(scores)
  system 'clear'
  puts "You're an #{PLAYER_MARKER}, I'm an #{COMPUTER_MARKER}."
  puts "First player to win 5 matches wins the game!"
  puts ""
  puts "Current Score: You - #{scores[0]}, Me - #{scores[1]}."
end

def place_marker!(board, current_player)
  player_places_marker!(board) if current_player == 'player'
  computer_places_marker!(board) if current_player == 'computer'
end

def player_places_marker!(board)
  square = ''
  loop do
    prompt "Choose a square (#{join_with_conj(empty_squares(board))})"
    square = gets.chomp.to_i
    break if empty_squares(board).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  board[square] = PLAYER_MARKER
end

def join_with_conj(available_squares, delimiter=', ', conjunction='or')
  last = available_squares.pop.to_s
  return last if available_squares.empty?
  if available_squares.size > 1
    first = available_squares.join(delimiter)
    "#{first}#{delimiter}#{conjunction} #{last}"
  else
    first = available_squares[0]
    "#{first} #{conjunction} #{last}"
  end
end

def empty_squares(board)
  board.keys.select { |num| board[num] == INITIAL_MARKER }
end

def computer_places_marker!(board)
  prompt "I'm choosing..."
  sleep 1
  # Set square to default value of nil:
  square = nil
  # --Offense first.
  # Iterate through WINNING_LINES nested array...
  WINNING_LINES.each do |line|
    # ...and pass the COMPUTER_MARKER in to find_best_square:
    square = find_best_square(line, board, COMPUTER_MARKER)
    # We look for the COMPUTER_MARKER to have 2 spots in this line.
    # The value for 'square' becomes the return value of the method.
    # It is either a key number to modify the board hash (the spot we want
    # to fill to complete a winning line), or it is nil (the 3rd spot was not
    # INITIAL_MARKER).
    # If 'square' is "true" (find_best_square returned something other than
    # nil on this iteration), we're done here, stop iterating through
    # WINNING_LINES, and go mark the board at this square (and win!):
    break if square
  end
  # --Now Defense.
  if !square
    # If the previous bit returned nil (no offensive play to be had),
    # iterate through WINNING_LINES array of arrays again...
    WINNING_LINES.each do |line|
      # ...and this time we pass in the PLAYER_MARKER to find_best_square:
      square = find_best_square(line, board, PLAYER_MARKER)
      # If there is a defensive play to be made for this line (2 spots filled
      # by the player, and space in the 3rd spot that can be filled to block),
      # the integer returned and assigned to 'square' is the key used to
      # modify the board hash for a block.
      # If 'square' is "true" (an integer was returned by find_best_square for
      # this iteration), stop iterating through WINNING_LINES, and go mark
      # the board:
      break if square
    end
  end
  # --Let's pick a spot that gives us two ways to win.
  # If the previous bit returned nil (no defensive play to be had)...
  if !square
    # ...let's see if there's a square we can choose that will give us
    # two different paths to victory:
    square = two_ways_to_win(board)
  end
  if !square
    # No other plays, so let's just choose the strategic square if it's
    # available:
    square = choose_strategic_square(board)
  end
  if !square
    # If we are still at a setting of square being nil, let's choose a
    # random available spot and return that number as the new
    # value for 'square'. This is the only chance for the computer
    # to "make a mistake" (if it "accidentally" chooses the space
    # it shouldn't). Decided to leave this as a possibility:
    square = empty_squares(board).sample
  end
  # After all of these possibilities, make the computer choice by modifying
  # the board hash by assigning the computer marker value to the key
  # specified by the 'square' variable:
  board[square] = COMPUTER_MARKER
end

def find_best_square(line, board, marker)
  # If for this 'winning line' array of keys the board has two of the spots
  # (values) filled with the 'marker' (COMPUTER or PLAYER) passed in...
  if board.values_at(*line).count(marker) == 2
    # ...select and return a new hash which has k/v pairs where--
    # --the key is included in the 'winning line' array passed in
    # --and the value is a space (INITIAL_MARKER):
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
    # Since we are already got here by a condition of there being
    # at least 2 spots in this line filled with the 'marker' passed in,
    # we know that there will either be a space in the 3rd spot, or the
    # alternate 'marker' (COMPUTER or PLAYER). So the hash returned from
    # select will have just one pair (if that third spot is a space), or
    # be empty.
    # The keys method is called on that hash and returns an array of that
    # key (or an empty array), and the first method is called on that array
    # and returns either the first (and only) element of it, or nil.
  end
end

def two_ways_to_win(board)
  empties = empty_squares(board)
  possible_two_ways = []
  # For each 'empty' square still available...
  empties.each do |empty|
    # ...iterate through WINNING_LINES...
    WINNING_LINES.each do |line|
      # ...if the line in this iteration includes this 'empty'...
      if line.include?(empty)
        # ...and if this line currently has 2 spaces and 1 computer marker...
        if board.values_at(*line).count(INITIAL_MARKER) == 2 &&
           board.values_at(*line).include?(COMPUTER_MARKER)
          # ...add this 'empty'to the 'possible two ways to win' collection:
          possible_two_ways << empty
        end
      end
    end
  end
  possible_two_ways.sort!
  previous_one = nil
  two_way_winner = nil
  # Iterate through our 'possible two ways to win' array, looking for
  # a value that shows up more than once. This means that it was an
  # available square in at least two winning lines:
  possible_two_ways.each_with_index do |this_one, index|
    # If this_one is the first, or different from the previous one...
    if index == 0 || previous_one != this_one
      # ...it becomes the new 'previous' one for the next iteration:
      previous_one = this_one
      # If we made it all the way through the possible_two_ways
      # array, and there were no repeated values, then two_way_winner will
      # still be nil. Otherwise...
    else
      # ...we found a repeated number, so two_way_winner can get a value,
      # and we can move on.
      two_way_winner = this_one
      puts "Two ways to win! You're done!" # (taunting message)
      sleep 2
      break
    end
  end
  # Either way, this is the return value assigned to 'square':
  two_way_winner
end

def choose_strategic_square(board)
  # If the strategic square is available let's take it:
  board[STRATEGIC_SQUARE] == ' ' ? STRATEGIC_SQUARE : nil
end

def alternate_player(player_to_be_changed)
  return 'player' if player_to_be_changed == 'computer'
  return 'computer' if player_to_be_changed == 'player'
end

def determine_winner(board)
  WINNING_LINES.each do |line|
    if board.values_at(*line).count(PLAYER_MARKER) == 3
      return 'player'
    elsif board.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'computer'
    end
  end
  nil
end

def someone_won?(match_winner)
  !!match_winner
end

def board_full?(board)
  empty_squares(board).empty?
end

def score_tally!(scores, who_won)
  case who_won
  when 'player'   then scores[0] += 1
  when 'computer' then scores[1] += 1
  end
end

def display_match_winner(match_winner)
  if match_winner == 'player'
    prompt "You won this match!"
  else
    prompt "I won this match!"
  end
end

def display_game_winner(board, scores)
  display_board(board, scores)
  displayed_game_winner = if scores[0] > scores[1]
                            'You'
                          elsif scores[1] > scores[0]
                            'I'
                          else
                            'Tie: Neither of us'
                          end
  prompt "#{displayed_game_winner} won the whole game!"
end

# Main Program
# (game-level initializations)
board = {}
scores = [0, 0] # player, computer
match_number = 0
match_winner = nil
tie_games = 0

# Main Game loop
loop do
  board = intitialize_board
  current_player = who_goes_first?(FIRST_MOVER, match_number, match_winner)
  # ...current_player will either be:
  #   1) the FIRST_MOVER (or the result of the 'choose' option)
  #   2) the original first player if the first game was a tie
  #   3) the 'alternate' player if we've had 2 or more tie matches in a row
  #   4) the winner of the previous match
  display_first_mover(current_player) # display who's turn it is

  loop do
    display_board(board, scores)
    place_marker!(board, current_player)
    # Determine the match_winner (will be nil if nobody won):
    match_winner = determine_winner(board)
    break if someone_won?(match_winner) || board_full?(board)
    # Switch to the other player before next loop iteration since we
    # didn't break:
    current_player = alternate_player(current_player)
  end

  # Match Results
  display_board(board, scores)
  match_number += 1

  # Win/Lose, or Draw?
  if match_winner
    # ...somebody won the match! Winner goes first in the next match, thanks
    # to the who_goes_first? method at the top of the Main Game loop.
    display_match_winner(match_winner)
    score_tally!(scores, match_winner)
    # Somebody won, so tie_games is set back to zero (in case it had been
    # incremented):
    tie_games = 0
  else
    # ...we have a tie, so tie_games is now incremented up by one:
    tie_games += 1
    if tie_games < 2
      # ...we will allow the current winner/first player to go first for
      # another match. We filled the board of 9 squares (odd), so the first
      # player was also the last player to go:
      match_winner = current_player
    else
      # ...we've had two tie games or more in a row, so let's switch it up and
      # let the other player go first so we don't get stuck in an eternal
      # deadlock of tie games:
      match_winner = alternate_player(current_player)

    end
    prompt "It's a tie match!"
  end

  # exit Main Game loop if someone won (score is 5)...
  break if scores[0] >= 5 || scores[1] >= 5
  # Ask if they want to continue the Main Game...
  prompt "Play another match? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

display_game_winner(board, scores)

prompt "Thanks for playing tic tac toe!"
