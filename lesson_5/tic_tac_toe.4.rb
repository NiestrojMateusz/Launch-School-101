require 'pry'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
FIRST_TURN = "choose".freeze

def prompt(message)
  puts("=> #{message}")
end

def whos_turn?
  
end
# rubocop:disable Metrics/MethodLength, Metics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
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
# rubocop:enable Metrics/MethodLength, Metics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, divider=", ", connector="or")
  if arr.size == 0
    return ''
  elsif arr.size == 1
    return arr.first.to_s
  else 
  last_item = ["#{connector} "]
  last_item << arr.pop
  arr.join(divider) + " #{last_item.join('')}"
  end
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square #{joinor(empty_squares(brd))}: ")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice. Try again.\n")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  
  if !square
    WINNING_LINES.each do |line|
        square = find_at_risk_square(line, brd, PLAYER_MARKER)
        break if square
      end
  end
  
  if !square && empty_squares(brd).include?(5)
    square = 5
  end
  
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
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_score = 0
computer_score = 0
loop do
  loop do
    
    board = initialize_board
    loop do
      display_board(board)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board)
    
    if someone_won?(board)
      prompt("#{detect_winner(board)} won round!")
    else
      prompt("It's a tie!")
    end
    
    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end  
      
    prompt("Your score: #{player_score} and computer score: #{computer_score}.")
    if player_score == 5
      prompt("You win a game! Congratulation")
      break
    elsif computer_score == 5
      prompt("Computer win a game!")
      break
    end
  prompt("Press any key to continue")
  gets.chomp
  next
  end
  prompt("Play again? (y or n)")
  answer = gets
  break unless answer.downcase.start_with?('y')
end
prompt("Thanks for playing Tic Tac Toe")

# detect_threat
# if line0 && line1 to are X then put O at line3

