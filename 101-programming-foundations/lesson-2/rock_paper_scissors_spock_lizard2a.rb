require 'pry'
VALID_CHOICES = %w(rock paper scissors spock lizard)
WINNERS = { 'rock'     => ['scissors', 'lizard'],
            'paper'    => ['rock', 'spock'],
            'scissors' => ['paper', 'lizard'],
            'spock'    => ['rock', 'scissors'],
            'lizard'   => ['paper', 'spock'] }

def prompt(message)
  Kernel.puts("=>  #{message}")
end

def validated_and_converted_or_passed_through(user_input)
  matches = first_letter_matching_choices(user_input)
  if VALID_CHOICES.include?(user_input) || matches.empty?
    user_input # pass through either an already complete user_input or a total miss
  else # turn the user_input into something usable
    matched_and_converted(user_input, matches)
  end
end

def first_letter_matching_choices(user_input)
  # return an array of all the available valid choices whose first letter 
  # matches the first letter of the user input
  VALID_CHOICES.select do |valid_choice|
    user_input[0] == valid_choice[0]
  end
end

def matched_and_converted(user_input, matches)
  if matches.length > 1 # there's 2 or more valid choices with the same first
                        # letter! uh oh!
    if need_another_letter?(user_input, matches)
      user_input = get_another_letter_from_user(user_input, matches)
      # give them a chance to provide a second letter that, when paired with
      # the already-matched first letter, will create a match to one of the
      # available valid choices. this is now the user_input!
    end
    second_letter_matches(user_input, matches)[0]
    # we either had already or went and got a second letter, and the first
    # 2 letters of the user input match 1 of our available valid choices.
    # we return from this method the first element in that array
  else
    matches[0] # there was only one match based on the first letter, so that
               # is the only available valid choice. first (only) element of 
               # that array is returned
  end
end

def need_another_letter?(user_input, matches)
  second_letter_matches(user_input, matches).empty? ||
  only_one_letter?(user_input)
  # the second letter provided by the user, when combined with the first
  # letter, doesn't match the first 2 letters of any available valid choices
  # OR
  # they only provided 1 letter (and it matches multiple available valid
  # choices)
  # if either of these, we return true, meaning, we need to get another letter
end

def second_letter_matches(user_input, matches)
  # return an array of the available valid choices where both the first AND
  # second letter match the user input
  matches.select do |matched|
    user_input[0..1] == matched[0..1]
  end
end

def only_one_letter?(user_input)
  # no second letter given by user?
  user_input.strip[1].nil?
end

def get_another_letter_from_user(user_input, matches)
  prompt("There are multiple choices with that first letter.")
  second_letter = nil
  loop do
    prompt("Please add a second letter to distinguish your choice...")
    second_letter = Kernel.gets().chomp().downcase.strip
    if second_letter.empty? || second_letter_sucks?(second_letter, matches)
      prompt("None of the choices have that second letter...")
    else
      prompt("Thanks!")
      break
    end
  end
  user_input[0].downcase + second_letter[0].downcase
  # they might've entered more than 1 letter for their 'second letter'
  # (those pesky users)
end

def second_letter_sucks?(second_letter, matches)
  matches.select { |match| second_letter[0] == match[1] }.empty?
  # the letter provided as a 'second letter' doesn't match any of the second
  # letters of any of the available valid choices we've already matched?
end

# THIS CODE IS NOT GOOD. IT WON'T SCALE UP TO MORE OPTIONS, MORE MATCHES OF
# MORE LETTERS, ETC. IT IS TOO SPECIFIC FOR THIS ONE CASE AND CAN'T EASILY
# BE ADAPTED TO EXPANDED REQUIREMENTS.

def win?(first, second)
  WINNERS[first].include?(second)
end

def calculate_results(player, computer)
  if win?(player, computer)
    [1, 0]
  elsif win?(computer, player)
    [0, 1]
  else
    [0, 0]
  end
end

def display_results_this_round(points_this_round)
  if points_this_round[0] == 1
    prompt("You won this round!")
  elsif points_this_round[1] == 1
    prompt("Computer won this round!")
  else
    prompt("It's a tie this round!")
  end
end

def display_scores_this_round(your_score, computer_score)
  prompt("You have #{your_score}, Computer has #{computer_score}.")
end

def display_final_results(your_score, computer_score)
  prompt("Game Over!")
  if your_score > computer_score
    prompt("You won, #{your_score} to #{computer_score}!")
  elsif computer_score > your_score
    prompt("Computer won, #{computer_score} to #{your_score}!")
  else
    prompt("Looks like a tie!")
  end
end

prompt("--------------------")
prompt("Welcome to Rock Paper Scissors Spock Lizard!")

loop do
  prompt("--------------------")
  prompt("Let's play the game!")
  prompt("First player to 5 wins!")
  your_score = 0
  computer_score = 0

  loop do
    choice = nil
    loop do
      prompt("--------------------")
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      prompt("(or, just the first letter of your choice...)")
      input = Kernel.gets().chomp().downcase
      choice = validated_and_converted_or_passed_through(input)
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

    points_this_round = calculate_results(choice, computer_choice)
    display_results_this_round(points_this_round)

    your_score = your_score += points_this_round[0]
    computer_score = computer_score += points_this_round[1]
    break if your_score == 5 || computer_score == 5

    display_scores_this_round(your_score, computer_score)

    prompt("Do you want to play another round? (y/n)")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
  end

  prompt("--------------------")
  display_final_results(your_score, computer_score)
  prompt("Do you want to play another game? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye.")
