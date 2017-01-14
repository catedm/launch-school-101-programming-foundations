BUSTED_SCORE = 21
WINNING_TOTAL = 5
SUITS = ['Hearts', 'Diamonds', 'Spades', 'Clubs'].freeze
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'].freeze

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |cards| cards[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(cards)
  total(cards) > BUSTED_SCORE
end

def detect_result(dealer_cards, player_cards)
  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  if player_total > BUSTED_SCORE
    :player_busted
  elsif dealer_total > BUSTED_SCORE
    :dealer_busted
  elsif dealer_total > player_total
    :dealer
  elsif player_total > dealer_total
    :player
  else
    :tie
  end
end

def display_results(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)

  if result == :player_busted
    prompt "You busted! Dealer wins!"
    grand_output(player_cards, dealer_cards)
  elsif result == :dealer_busted
    prompt "Dealer busted! You win!"
    grand_output(player_cards, dealer_cards)
  elsif result == :dealer
    prompt "Dealer wins!"
    grand_output(player_cards, dealer_cards)
  elsif result == :player
    prompt "You win!"
    grand_output(player_cards, dealer_cards)
  else
    prompt "It's a tie!"
    grand_output(player_cards, dealer_cards)
  end
end

def play_again?
  puts '--------------'
  prompt "Do you want to play again? (y / n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def grand_output(player_cards, dealer_cards)
  puts "=============="
  prompt "Dealer has #{dealer_cards.join(' ')}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards.join(' ')}, for a total of: #{total(player_cards)}"
  puts "=============="
end

# start game
player_score = 0
dealer_score = 0
loop do
  puts ''
  prompt "Welcome to Twenty-One!"

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "The dealer has #{dealer_cards[0].join(' ')} and ?"
  prompt "You have #{player_cards.join(' ')} for a total of #{total(player_cards)}."

  # player_turn
  loop do
    player_turn = nil
    loop do
      prompt "Would you like to hit(h) or stay(s)?"
      player_turn = gets.chomp.downcase
      break if ['h', 's'].include?(player_turn)
      prompt "Sorry, must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt "You chose to hit!"
      prompt "Your cards are now: #{player_cards.join(' ')} for a total of #{total(player_cards)}."
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_results(dealer_cards, player_cards)
    dealer_score += 1
    prompt "The score is: Player: #{player_score} Dealer: #{dealer_score}"
    prompt "The first player to 5 wins"
    if player_score == 5 || dealer_score == 5
      break
    else
      next
    end
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  # dealer turn
  prompt "Dealer turn..."

  loop do
    break if busted?(dealer_cards) || total(dealer_cards) >= 17

    prompt "Dealer hits!"
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer total is now: #{total(dealer_cards)}"
    display_results(dealer_cards, player_cards)
    player_score += 1
    prompt "The score is: Player: #{player_score} Dealer: #{dealer_score}"
    prompt "The first player to 5 wins"
    if player_score == 5 || dealer_score == 5
      break
    else
      next
    end
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  display_results(dealer_cards, player_cards)

  player_score += 1 if detect_result(dealer_cards, player_cards) == :player
  player_score += 1 if detect_result(dealer_cards, player_cards) == :dealer_busted
  dealer_score += 1 if detect_result(dealer_cards, player_cards) == :dealer
  dealer_score += 1 if detect_result(dealer_cards, player_cards) == :player_busted

  puts "=============="
  prompt "The score is: Player: #{player_score} Dealer: #{dealer_score}"
  prompt "The first player to 5 wins"
  puts "=============="

  if player_score == 5 || dealer_score == 5
    break
  end
end

if dealer_score == 5
  prompt "DEALER WINS!"
elsif player_score == 5
  prompt "PLAYER WINS!"
end

puts ""
prompt "Thank you for playing Twenty-One! Good bye!"
