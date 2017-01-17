require 'pry'
DECK = [["H", "1"], ["D", "1"], ["C", "1"], ["S", "1"]] + [["H", "2"], ["D", "2"], ["C", "2"], ["S", "2"]] + [["H", "3"], ["D", "3"], ["C", "3"], ["S", "3"]] + [["H", "4"], ["D", "4"], ["C", "4"], ["S", "4"]] + [["H", "5"], ["D", "5"], ["C", "5"], ["S", "5"]] + [["H", "6"], ["D", "6"], ["C", "6"], ["S", "6"]] + [["H", "7"], ["D", "7"], ["C", "7"], ["S", "7"]] + [["H", "8"], ["D", "8"], ["C", "8"], ["S", "8"]] + [["H", "9"], ["D", "9"], ["C", "9"], ["S", "9"]] + [["H", "10"], ["D", "10"], ["C", "10"], ["S", "10"]] + [["H", "J"], ["D", "J"], ["C", "J"], ["S", "J"]] + [["H", "Q"], ["D", "Q"], ["C", "Q"], ["S", "Q"]] + [["H", "K"], ["D", "K"], ["C", "K"], ["S", "K"]] + [["H", "A"], ["D", "A"], ["C", "A"], ["S", "A"]]
PLAYER_PHRASE = "You".freeze
COMPUTER_PHRASE = "Dealer".freeze
LIMIT = 21
DEALER_HIT_LIMIT = 17

def prompt(message)
  puts("=> #{message}")
end

def initialize_deck(deck)
  deck.shuffle!
end

def deal(deck, cards)
  deck.pop(cards)
end

def display_hand(hand, player, score, turn=false)
  index = 0
  card = "=> #{player} has: "
  if player == COMPUTER_PHRASE && hand.size == 2 && turn == false
    while index <= hand.size - 2
      card += "#{hand[index].join(':')} and unknown card "
      index += 1
    end
  else
    while index <= hand.size - 1
      card += "#{hand[index].join(':')}, "
      index += 1
    end
    card += "for a total of #{score}"
  end
  puts card
end

def total(cards)
  values = cards.map do |card|
    card[1]
  end
  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i.zero?
      sum += 10
    else
      sum += value.to_i
    end
  end
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > LIMIT
  end

  sum
end

def busted?(score)
  if score > LIMIT
    true
  else
    false
  end
end

def again?
  puts "\n\n===================================="
  prompt("Do you want to play again? [y or n]")
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    true
  else
    false
  end
end

def winner?(score1, score2)
  #system 'clear'
  if score1 > score2
    prompt("You win!!! Congratulation!")
  elsif score2 > score1
    prompt("Dealer win!!!")
  else
    prompt("It is a draw!")
  end
end

prompt("WELCOME In Twenty One")
d_hand = []
p_score = 0
p_hand = []
d_score = 0

loop do
  deck_remains = DECK
  initialize_deck(deck_remains)
  p_hand = deal(deck_remains, 2)
  p_score = total(p_hand)
  display_hand(p_hand, PLAYER_PHRASE, p_score)
  d_hand = deal(deck_remains, 2)
  d_score = total(d_hand)
  display_hand(d_hand, COMPUTER_PHRASE, d_score)

  answer = nil
  loop do
    puts "hit or stay?"
    answer = gets.chomp
    if answer.downcase.start_with?('h')
      prompt("You choose to hit!")
      p_hand += deal(deck_remains, 1)
    end
    p_score = total(p_hand)
    break if answer == 'stay' || busted?(p_score)
    display_hand(p_hand, PLAYER_PHRASE, p_score)
  end

  again = false
  if busted?(p_score)
    prompt("You are busted!")
    display_hand(p_hand, PLAYER_PHRASE, p_score)
    # dealer_rounds += 1
    again = again?
  else
    puts "You chose to stay! at #{p_score}"
    
    prompt("Dealer turn...")
    dealer_turn = false
    loop do
      d_score = total(d_hand)
      break if busted?(d_score) || d_score > DEALER_HIT_LIMIT
      dealer_turn = true
      display_hand(d_hand, COMPUTER_PHRASE, d_score, dealer_turn)
      prompt("Dealer choose to hit!\n")
      d_hand += deal(deck_remains, 1)
    end

    if busted?(d_score)
      prompt("Dealer are busted!")
      puts "======================================\n\n"
      display_hand(d_hand, COMPUTER_PHRASE, d_score, dealer_turn)
      display_hand(p_hand, PLAYER_PHRASE, p_score)
      prompt("Congratulation! You win the round!")
      # player_rounds += 1
    else
      dealer_turn = true
      prompt("Dealer stays! with total of #{d_score}")
      puts "======================================\n\n"
      display_hand(d_hand, COMPUTER_PHRASE, d_score, dealer_turn)
      display_hand(p_hand, PLAYER_PHRASE, p_score)
      winner?(p_score, d_score)
    end
    
    # prompt("Your score: #{player_rounds} and computer score: #{dealer_rounds}.")
    # if player_score == 5
    #   prompt("You win a game! Congratulation")
    #   break
    # elsif computer_score == 5
    #   prompt("Dealer win a game!")
    #   break
    # end
    
    again = again?
  end
  break if again == false
  system 'clear'
end
prompt "Thank you for playing Twenty-One! Good bye!"
