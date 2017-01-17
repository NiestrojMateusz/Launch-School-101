require 'pry'
DECK = [["H", "1"], ["D", "1"], ["C", "1"], ["S", "1"]] + [["H", "2"], ["D", "2"], ["C", "2"], ["S", "2"]] + [["H", "3"], ["D", "3"], ["C", "3"], ["S", "3"]] + [["H", "4"], ["D", "4"], ["C", "4"], ["S", "4"]] + [["H", "5"], ["D", "5"], ["C", "5"], ["S", "5"]] + [["H", "6"], ["D", "6"], ["C", "6"], ["S", "6"]] + [["H", "7"], ["D", "7"], ["C", "7"], ["S", "7"]] + [["H", "8"], ["D", "8"], ["C", "8"], ["S", "8"]] + [["H", "9"], ["D", "9"], ["C", "9"], ["S", "9"]] + [["H", "10"], ["D", "10"], ["C", "10"], ["S", "10"]] + [["H", "J"], ["D", "J"], ["C", "J"], ["S", "J"]] + [["H", "Q"], ["D", "Q"], ["C", "Q"], ["S", "Q"]] + [["H", "K"], ["D", "K"], ["C", "K"], ["S", "K"]] + [["H", "A"], ["D", "A"], ["C", "A"], ["S", "A"]]
PLAYER_PHRASE = "Yours".freeze
COMPUTER_PHRASE = "Dealer".freeze
d_hand = []
p_score = 0
p_hand = 0
d_score = 0
def prompt(message)
  puts("=> #{message}")
end

def initialize_deck(deck)
  deck.shuffle
end

def remain_cards(deck, hand)
  deck.delete(hand[0])
  deck.delete(hand[1])
  deck
end

def deal(deck, cards)
  deck.pop(cards)
end

def display_hand(hand, player)
  index = 0
  card = "=> #{player} cards: "
  if player == COMPUTER_PHRASE && hand.size == 2
    while index <= hand.size - 2
      card += "#{hand[index].join(':')} and unknown card "
      index += 1
    end
  else
    while index <= hand.size - 1
      card += "#{hand[index].join(':')}, "
      index += 1
    end
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
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(score)
  if score > 21
    true
  else
    false
  end
end

def again?
  prompt("Do you want to play again?")
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    true
  else
    false
  end
end

def winner?(score1, score2)
  system 'clear'
  if score1 > score2
    prompt("Player win!!! with #{score1}. Congratulation!")
  elsif score2 > score1
    prompt("Dealer win!!! Dealer has #{score2} and Player has #{score1}")
  else
    prompt("It is a draw! Player has #{score1} and Dealer has #{score2}")
  end
end

deck_remains = DECK

prompt("WELCOME IN BLACK JACK")
d_hand = []
p_score = 0
p_hand = 0
d_score = 0
loop do
  p_hand = deal(deck_remains, 2)
  display_hand(p_hand, PLAYER_PHRASE)
  remain_cards(deck_remains, p_hand)

  d_hand = deal(deck_remains, 2)
  display_hand(d_hand, COMPUTER_PHRASE)
  remain_cards(deck_remains, d_hand)

  answer = nil
  p_score = 0

  loop do
    puts "hit or stay?"
    answer = gets.chomp
    if answer.downcase.start_with?('h')
      p_hand << deal(deck_remains, 1).flatten
      remain_cards(deck_remains, p_hand)
    end
    p_score = total(p_hand)
    break if answer == 'stay' || busted?(p_score)
    display_hand(p_hand, PLAYER_PHRASE)
  end

  again = false
  if busted?(p_score)
    system 'clear'
    prompt("You're lose. You have #{p_score}")
    display_hand(p_hand, PLAYER_PHRASE)
    again = again?
  else
    puts "You chose to stay!"
    d_score = 0
    loop do
      d_score = total(d_hand)
      break if busted?(d_score) || d_score > 17
      d_hand << deal(deck_remains, 1).flatten
      remain_cards(deck_remains, d_hand)
    end

    if busted?(d_score)
      system 'clear'
      puts "Congratulation! You have #{p_score} and You are the winner! Dealer has #{d_score} and busted."
    else
      display_hand(p_hand, PLAYER_PHRASE)
      display_hand(d_hand, COMPUTER_PHRASE)
      winner?(p_score, d_score)
    end
  end
  break if again == false
end
