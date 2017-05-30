SUITS = ['H', 'D', 'S', 'C']
RANKS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def initialize_deck
  # deck = []
  # SUITS.each do |suit|
  #   RANKS.each do |rank|
  #     card = [suit, rank]
  #     deck << card
  #   end
  # end
  # deck.shuffle
  SUITS.product(RANKS).shuffle
end

def deal_cards(deck)
  player = []
  dealer = []
  2.times do
    player << deck.pop
    dealer << deck.pop
  end
  return player, dealer
end

def display_cards(player_hand, dealer_hand, turn, scores)
  system 'clear'
  dealer_hand_unturned = []
  display_scores(scores)
  puts "Player:"
  draw_cards(player_hand)
  puts "Dealer:"
  if turn == 'player'
    dealer_hand_unturned << dealer_hand.last
    dealer_hand_unturned.unshift(dealer_hand.first.map { '?' })
    draw_cards(dealer_hand_unturned)
  else
    draw_cards(dealer_hand)
  end
end

def display_scores(scores)
  puts "Score => Player: #{scores[0]}, Dealer: #{scores[1]}"
  puts "-----------------------------"
end

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
def draw_cards(hand)
  card_count = hand.count
  card_count.times do
    print " ----- "
    print ' '
  end
  print "\n"
  card_count.times do
    print "|     |"
    print ' '
  end
  print "\n"
  card_count.times do |i|
    if hand[i][1] == '10'
      print "|  #{hand[i][1]} |"
    else
      print "|  #{hand[i][1]}  |"
    end
    print ' '
  end
  print "\n"
  card_count.times do |i|
    print "|  #{hand[i][0]}  |"
    print ' '
  end
  print "\n"
  card_count.times do
    print "|     |"
    print ' '
  end
  print "\n"
  card_count.times do
    print " ----- "
    print ' '
  end
  print "\n"
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

def busted?(total)
  total > 21
end

def hit!(hand, deck)
  hand << deck.pop
end

def calculate_total(hand)
  values = hand.map { |card| card[1] }

  total = 0
  values.each do |value|
    total = if value == 'A'
              total + 11
            elsif value.to_i == 0
              total + 10
            else
              total + value.to_i
            end
  end
  adjust_for_aces(values, total)
end

def adjust_for_aces(values, total)
  values.select { |value| value == 'A' }.count.times do
    total -= 10 if total > 21
  end
  total
end

def update_scores!(player_total, dealer_total, scores)
  result = calculate_result(player_total, dealer_total)
  scores[0] += 1 if result == :player || result == :dealer_busted
  scores[1] += 1 if result == :dealer || result == :player_busted
end

def calculate_result(player_total, dealer_total)
  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :push
  end
end

def display_results(player_total, dealer_total)
  result = calculate_result(player_total, dealer_total)
  if result.to_s.include?('busted')
    display_busted(result)
  else
    puts "Dealer has #{dealer_total}."
    sleep 1
    puts "You have #{player_total}."
    sleep 1
    case result
    when :player
      puts "You win!"
    when :dealer
      puts "Dealer wins."
    when :push
      puts "It's a push."
    end
  end
  sleep 1
end

def display_busted(result)
  sleep 1
  case result
  when :player_busted
    puts "You busted. Dealer wins."
  when :dealer_busted
    puts "Dealer busted, you win!"
  end
end

def display_winner(scores)
  puts "----------------------"
  puts "Well, that's it!"
  if scores[0] > scores[1]
    puts "You won the whole game!"
  elsif scores[1] > scores[0]
    puts "The dealer won the whole game."
  else
    puts "We ended with a tie!"
  end
end

def play_again?
  loop do
    puts "Play again? (y/n)"
    answer = gets.chomp.downcase.strip[0]
    if answer == 'y'
      break(true)
    elsif answer == 'n'
      break(false)
    else
      puts "Huh?"
    end
  end
end

# ------------------------------------------------------------------------------
puts "----------------------"
puts "Welcome to Twenty_One!"
puts "First winner of 5 hands wins the game."
puts "----------------------"
sleep 4

scores = [0, 0] # [player, dealer]

loop do
  deck = initialize_deck

  player_hand, dealer_hand = deal_cards(deck)

  player_total = calculate_total(player_hand)
  dealer_total = calculate_total(dealer_hand)

  whos_turn = 'player'
  loop do
    display_cards(player_hand, dealer_hand, whos_turn, scores)
    player_choice = nil
    loop do
      puts "Would you like to 'hit' or 'stay'?"
      player_choice = gets.chomp.downcase
      break if ['hit', 'stay'].include?(player_choice)
      puts "Try again..."
    end

    hit!(player_hand, deck) if player_choice == 'hit'
    player_total = calculate_total(player_hand)
    break if player_choice == 'stay' || busted?(player_total)
  end

  if busted?(player_total)
    update_scores!(player_total, dealer_total, scores)
    display_cards(player_hand, dealer_hand, whos_turn, scores)
    display_results(player_total, dealer_total)
    scores[0] >= 5 || scores[1] >= 5 || !play_again? ? break : next
  else
    puts "You chose to stay."
    sleep 1.5
  end

  whos_turn = 'dealer'
  loop do
    display_cards(player_hand, dealer_hand, whos_turn, scores)
    break if dealer_total >= 17

    hit!(dealer_hand, deck)
    dealer_total = calculate_total(dealer_hand)
    sleep 1.5
  end

  if busted?(dealer_total)
    update_scores!(player_total, dealer_total, scores)
    display_cards(player_hand, dealer_hand, whos_turn, scores)
    display_results(player_total, dealer_total)
    scores[0] >= 5 || scores[1] >= 5 || !play_again? ? break : next
  else
    puts "Dealer stays."
    sleep 1.5
  end

  update_scores!(player_total, dealer_total, scores)
  display_cards(player_hand, dealer_hand, whos_turn, scores)
  display_results(player_total, dealer_total)

  break if scores[0] >= 5 || scores[1] >= 5 || !play_again?
  puts "OK, here we go!"
  sleep 1
end

sleep 1
display_winner(scores)
sleep 2

puts "Thanks for playing 21. Goodbye."
