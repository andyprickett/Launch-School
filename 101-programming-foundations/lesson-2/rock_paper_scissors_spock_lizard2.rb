require 'pry'
VALID_CHOICES = %w(rock paper scissors spock lizard)
WINNERS = { 'rock'     => ['scissors', 'lizard'],
            'paper'    => ['rock', 'spock'],
            'scissors' => ['paper', 'lizard'],
            'spock'    => ['rock', 'scissors'],
            'lizard'   => ['paper', 'spock'] }

def test_method
  prompt('test message')
end

def prompt(message)
  Kernel.puts("=>  #{message}")
end

def compile_array_of_duplicate_first_letters(possible_choices)
  first_choice = nil
  repeated_choice = 0
  multiple_choices = []
  possible_choices.sort.uniq.each do |valid_choice|
    first_choice ||= valid_choice
    if first_choice[0] == valid_choice[0]
      repeated_choice += 1
      if repeated_choice >= 1
        multiple_choices << first_choice[0]
        first_choice = valid_choice
      end
    else
      repeated_choice = 0
      first_choice = valid_choice
    end
  end
  multiple_choices.drop(1)
end

def get_another_letter(user_input)
  prompt("There are multiple choices with that first letter.")
  second_letter = nil
  first_two_letters = VALID_CHOICES.map { |choice| choice[0..1] }
  loop do
    prompt("Please add a second letter to distinguish your choice...")
    second_letter = Kernel.gets().chomp()
    if second_letter.empty? || !("a".."z").cover?(second_letter.downcase)
      prompt("Invalid entry, please enter a letter...")
    elsif !first_two_letters.include?(user_input[0].downcase + second_letter[0].downcase)
      prompt("That doesn't help. Pick a second letter that will.")
    else
      prompt("Thanks!")
      break
    end
  end
  user_input[0].downcase + second_letter[0].downcase
end

def duplicate?(user_input)
  duplicates = compile_array_of_duplicate_first_letters(VALID_CHOICES)
  if duplicates.include?(user_input[0])
    true
  else
    false
  end
end

def no_second_letter?(user_input)
  first_two_letters = VALID_CHOICES.map { |choice| choice[0..1] }
  if user_input[1].nil?
    true
  elsif !first_two_letters.include?(user_input[0..1])
    true
  else
    false
  end
end

def convert(user_input)
  if duplicate?(user_input) && no_second_letter?(user_input)
    user_input = get_another_letter(user_input)
  end

  choice = nil
  VALID_CHOICES.each do |valid_choice|
    if user_input[0] == valid_choice[0]
      choice ||= valid_choice
      if duplicate?(user_input)
        if user_input[1] == valid_choice[1]
          choice = valid_choice
        end
      end
    end
  end
  choice
end

def win?(first, second)
  WINNERS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    input = Kernel.gets().chomp().downcase
    choice = convert(input)
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye.")
