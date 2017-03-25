VALID_CHOICES = %w(rock paper scissors spock lizard)

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Is it a valid single letter choice?
def valid_single_letter_choice?(single_letter_choice)
  good_single_letter = 0
  VALID_CHOICES.each do |choice_available|
    choice_available.chr == single_letter_choice.chr && good_single_letter += 1
  end
  good_single_letter > 0
end

# Let's convert single letter choice to a full word for evaluation.
def single_letter_choice_converted_to_full_word(single_letter)
  case single_letter.chr
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'l'
    'lizard'
  else
    s_decision()
  end
end

# There are 2 single-letter 's' choices available,
# let's figure out which one we mean.
def s_decision()
  s_choice = ''
  prompt("...'c' for 'scissors,' 'p' for 'spock'...")
  loop do
    s_choice = Kernel.gets().chomp()
    if s_choice.chr == 'c'
      return 'scissors'
    elsif s_choice.chr == 'p'
      return 'spock'
    else
      prompt("Huh? Try again, please...")
    end
  end
end

# Pick a winner!
def win?(player_one, player_two)
  win_rock?(player_one, player_two) ||
    win_paper?(player_one, player_two) ||
    win_scissors?(player_one, player_two) ||
    win_lizard?(player_one, player_two) ||
    win_spock?(player_one, player_two)
end

# 'rock' victory logic
def win_rock?(one, two)
  one == 'rock' && ((two == 'scissors') || (two == 'lizard'))
end

# 'paper' victory logic
def win_paper?(one, two)
  one == 'paper' && ((two == 'rock') || (two == 'spock'))
end

# 'paper' victory logic
def win_scissors?(one, two)
  one == 'scissors' && ((two == 'paper') || (two == 'lizard'))
end

# 'spock' victory logic
def win_spock?(one, two)
  one == 'spock' && ((two == 'scissors') || (two == 'rock'))
end

# 'lizard' victory logic
def win_lizard?(one, two)
  one == 'lizard' && ((two == 'spock') || (two == 'paper'))
end

# Win, lose, or tie, it is decided here.
def who_won?(player, computer)
  if win?(player, computer)
    1
  elsif win?(computer, player)
    -1
  else
    0
  end
end

# Outcome displayed.
def display_outcome(game_result)
  if game_result == 1
    prompt("You won!")
  elsif game_result == -1
    prompt("I won!")
  else
    prompt("It's a tie!")
  end
end

# Calculate player one points.
def points_one(outcome)
  if outcome > 0
    1
  else
    0
  end
end

# Calculate player two points.
def points_two(outcome)
  if outcome < 0
    1
  else
    0
  end
end

# Here's the program
prompt("Rock Paper Scissors Spock Lizard")
prompt("First player to 5 wins it! (tie games don't count)")

# New game, zero out the scores.
player_one_score = 0
player_two_score = 0

# main loop
loop do
  choice = ''
  # Choose wisely.
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}...")
    prompt("(...or just type the first letter.)")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    elsif valid_single_letter_choice?(choice)
      choice = single_letter_choice_converted_to_full_word(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  # Now the computer choses.
  computer_choice = VALID_CHOICES.sample
  # Here's what we both chose.
  prompt("You chose: #{choice}, I chose: #{computer_choice}.")

  # Calculate results of the game.
  outcome = who_won?(choice, computer_choice)
  # I'll tell you who won.
  display_outcome(outcome)

  # Let's add to the scoreboard.
  player_one_score += points_one(outcome)
  player_two_score += points_two(outcome)

  # Here's the current/total score.
  prompt("Total Score: You = #{player_one_score}, Me = #{player_two_score}")

  # Let's end the game when someone hits 5.
  break if player_one_score == 5 || player_two_score == 5

  # No one's hit 5 yet, but do we want to continue?
  prompt("Do you want to play again? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
