def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11)
end

def display_card_total(x)
  puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 return gets.chomp
end

def end_game(x)
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  r=deal_card
  q=deal_card
  display_card_total(r+q)
  return r+q
end

def hit?(q)
 prompt_user
g = get_user_input
 if g == "s"
  return q
 end
 if g == "h"
   t=deal_card
   return t+q
 end
 if g != "h" && g != "s"
   invalid_command
   return q
   prompt_user
 end
end

def invalid_command
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  h=0
  until h > 21 do
  welcome
  j=initial_round
  h = hit?(j)
  display_card_total (h)
  end
  end_game (h)
end

