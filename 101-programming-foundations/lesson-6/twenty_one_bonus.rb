require 'pry'

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

def display_cards(player_hand, dealer_hand, turn)
  system 'clear'
  dealer_hand_unturned = []
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

def stay?(total)
  (17..21).cover?(total)
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

def display_results(player_total, dealer_total, whos_turn)
  result = calculate_result(player_total, dealer_total)

  if result.to_s.include?('busted')
    display_busted(whos_turn)
  else
    display_winner(player_total, dealer_total, result)
  end
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

def display_busted(whos_turn)
  if whos_turn == 'player'
    puts "You busted! Dealer wins."
  else
    puts "Dealer busted, you win!"
  end
end

def display_winner(player_total, dealer_total, result)
  puts "Dealer has #{dealer_total}."
  puts "You have #{player_total}."
  case result
  when :player_busted
    puts "You busted. Dealer wins."
  when :dealer_busted
    puts "Dealer busted! You win!"
  when :player
    puts "You win!"
  when :dealer
    puts "Dealer wins."
  when :push
    puts "It's a push."
  end
  sleep 2
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
puts "Welcome to Twenty_One!"

loop do
  deck = initialize_deck

  player_hand, dealer_hand = deal_cards(deck)

  player_total = calculate_total(player_hand)
  dealer_total = calculate_total(dealer_hand)

  whos_turn = 'player'
  stayed = while !busted?(player_total)
             display_cards(player_hand, dealer_hand, whos_turn)
             player_choice = nil
             loop do
               puts "Would you like to 'hit' or 'stay'?"
               player_choice = gets.chomp.downcase
               break if ['hit', 'stay'].include?(player_choice)
               puts "Try again..."
             end

             break(true) if player_choice == 'stay'
             hit!(player_hand, deck)
             player_total = calculate_total(player_hand)
           end

  if stayed # (also meaning: "player didn't bust")
    puts "You chose to stay."
    sleep 1
  else # (meaning: "player did bust")
    display_cards(player_hand, dealer_hand, whos_turn)
    display_results(player_total, dealer_total, whos_turn)
    play_again? ? next : break
  end

  whos_turn = 'dealer'
  while !busted?(dealer_total)
    display_cards(player_hand, dealer_hand, whos_turn)
    break if stay?(dealer_total)
    hit!(dealer_hand, deck)
    dealer_total = calculate_total(dealer_hand)
    sleep 1
  end

  display_cards(player_hand, dealer_hand, whos_turn)
  display_results(player_total, dealer_total, whos_turn)

  sleep 1
  break unless play_again?
  puts "OK, here we go!"
  sleep 1
end

puts "Thanks for playing 21. Goodbye."
