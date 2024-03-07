# => Rails is confusing, here's my imports even though i likely don't need them.
require_relative 'classes/player'
require_relative 'classes/question'
require_relative 'classes/game'


# New game:
game = Game.new("Player 1", "Player 2")

while !game.game_end?
  # => While the game isnt over...
  current_question = game.current_question
  # => generate a new question!
  puts "--- NEW TURN ---"
  # => "[Player#], What is [num1] + [num2]?"
  puts "#{game.current_player.name}, #{current_question.ask_question}"

  # => Ask for an answer using command line:
  player_answer = gets.chomp.to_i #=> The to_i is to make sure the input is an integer type.
  
  # => Check if answer is correct, update lives.
  game.current_player.answer_question(player_answer, current_question)

  # => Swap turn!
  game.change_turn
end

# => if a player has zero lives left, determine the winner and print:
winner = game.player1.lives.zero? ? game.player2 : game.player1
puts "#{winner.name} wins!"