VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock')
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

puts " "
puts prompt("Welcome! The first player to 5 wins.")
computer_count = 0
player_count = 0
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts ""
  Kernel.puts("You choose #{choice}. Computer chose #{computer_choice}.")
  puts ""

  display_results(choice, computer_choice)

  computer_count += 1 if win?(computer_choice, choice)
  player_count += 1 if win?(choice, computer_choice)

  puts ""
  puts "-----------------------------------------------------------------"
  puts "The score is player: #{player_count} computer: #{computer_count}."
  puts "-----------------------------------------------------------------"
  puts ""

  if player_count == 5
    puts prompt("YOU WON!")
    break
  elsif computer_count == 5
    puts prompt("COMPUTER WON")
    break
  end
end

prompt("Thank you for playing!")
prompt("Goodbye!")
