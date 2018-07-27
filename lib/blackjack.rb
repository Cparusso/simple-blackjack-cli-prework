def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)

  return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = 0

  card_total += deal_card
  card_total += deal_card

  display_card_total(card_total)

  return card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input

  if input == "h"
    card_total += deal_card
  elsif input != "h" && input != "s"
    invalid_command
    hit?
  end

  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

def runner
  card_total = initial_round

  welcome

  prompt_user
  get_user_input

  until card_total > 21
    hit?(card_total)
  end

  end_game
end
