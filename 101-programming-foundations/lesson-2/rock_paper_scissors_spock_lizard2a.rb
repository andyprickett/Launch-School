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
  if VALID_CHOICES.include?(user_input)
    user_input
  elsif matches.nil?
    user_input
  else
    matched_and_converted(user_input, matches)
  end
end

def first_letter_matching_choices(user_input)
  matches = VALID_CHOICES.select do |valid_choice|
    user_input[0] == valid_choice[0]
  end
  if matches.empty?
    matches = nil
  end
  matches
end

def matched_and_converted(user_input, matches)
  if matches.length > 1
    if need_another_letter?(user_input, matches)
      user_input = get_another_letter_from_user(user_input, matches)
    end
    second_letter_matches(user_input, matches)[0]
  else
    matches[0]
  end
end

def need_another_letter?(user_input, matches)
  second_letter_matches = second_letter_matches(user_input, matches)
  if second_letter_matches.empty? || only_one_letter?(user_input)
    true
  else
    false
  end
end

def second_letter_matches(user_input, matches)
  second_letter_matches = matches.select do |matched|
    user_input[0..1] == matched[0..1]
  end
  second_letter_matches
end

def only_one_letter?(user_input)
  if user_input[1].nil?
    true
  else
    false
  end
end

def get_another_letter_from_user(user_input, matches)
  prompt("There are multiple choices with that first letter.")
  second_letter = nil
  loop do
    prompt("Please add a second letter to distinguish your choice...")
    second_letter = Kernel.gets().chomp().downcase
    if second_letter.empty? || second_letter_sucks?(second_letter, matches)
      prompt("None of the choices have that second letter...")
    else
      prompt("Thanks!")
      break
    end
  end
  user_input[0].downcase + second_letter[0].downcase
end

def second_letter_sucks?(second_letter, matches)
  second_letter = matches.select do |match|
    second_letter[0] == match[1]
  end
  if second_letter.empty?
    true
  else
    false
  end
end

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
