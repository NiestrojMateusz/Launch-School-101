VALID_CHOICES = %w(rock paper scissors lizard spock)

SHORTCUTS = %w(r p s l k)

WINNING_HASH = {
  'rock' => %w(scissors lizard),
  'paper' => %w(rock spock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(paper spock),
  'spock' => %w(rock scissors)
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_HASH[first].include?(second)
end  
# def win?(first, second)
#   (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
#     (first == 'paper' && (second == 'rock' || second == 'spock')) ||
#     (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
#     (first == 'lizard' && (second == 'paper' || second == 'spock')) ||
#     (first == 'spock' && (second == 'rock' || second == 'scissors'))
# end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It is a tie")
  end
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      operator_prompt = <<-MSG
  You can use shortcuts, type:
      r for rock
      p for paper
      s for scissors
      l for lizard
      k for spock
      MSG
      prompt(operator_prompt)
      choice = Kernel.gets().chomp()
      
      if VALID_CHOICES.include?(choice) || SHORTCUTS.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end  
    end
    
    if choice.length <= 1
      case choice
      when 'r'
        choice = 'rock'
      when 'p'
        choice = 'paper'
      when 's'
        choice = 'scissors'
      when 'l'
        choice = 'lizard'
      when 'k'
        choice = 'spock'
      end
    end
    
    computer_choice = VALID_CHOICES.sample
    
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    
    display_result(choice, computer_choice)
    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
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
  end
  
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end 

prompt("Thank you for playing. Goodbye")


