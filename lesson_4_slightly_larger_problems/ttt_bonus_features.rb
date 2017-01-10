require "pry"

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def joinor(arr, delimiter=', ', word='or')
  if arr.size == 1
    return arr.join('')
  elsif arr.size == 2
    return arr.insert(1, 'or').join(' ')
  else arr.size != 2
    arr2 = arr.insert(arr.size - 1, word).join("#{delimiter}")
    arr2[-3] = ''
    return arr2
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    puts ""
    prompt "Choose a position to place a piece: #{joinor(empty_squares(brd), ', ')}"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # offense first
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if brd[5] == INITIAL_MARKER
    return brd[5] = COMPUTER_MARKER
  end

  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

FIRST_PLAY = " "

def who_goes_first(board)
  puts ""
  prompt "Welcome to Tic Tac Toe!"
  prompt "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}. The first player to 5 wins."
  prompt "Who would you like to play first? Type 'P' for player or 'C for computer.'"
  answer = gets.chomp
  loop do
    if answer.downcase == 'p'
      player_places_piece!(board)
      break
    elsif answer.downcase == 'c'
      computer_places_piece!(board)
      break
    else
      puts "That is not a valid option. Please try again."
      answer = gets.chomp
    end
  end
end

def alternate_player(current_player)
  if current_player == PLAYER_MARKER
    current_player = COMPUTER_MARKER
  end
end

def place_piece!(board, current_player)
  if current_player == PLAYER_MARKER
    player_places_piece!(board)
  elsif current_player == COMPUTER_MARKER
    computer_places_piece!(board)
  end
end

computer_score = 0
player_score = 0

loop do
  board = initialize_board

  who_goes_first(board) if FIRST_PLAY == 'choose'

  loop do

    display_board(board)

    player_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)

  end

  display_board(board)


  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie"
  end

  computer_score += 1 if detect_winner(board) == "Computer"
  player_score += 1 if detect_winner(board) == "Player"

  prompt "Computer score is #{computer_score}. Player score is #{player_score}."
  prompt "The first player to reach 5 wins"

  if player_score == 5 || computer_score == 5
    break
  end

end

prompt "Thanks for playing Tic Tac Toe! Goodbye."
