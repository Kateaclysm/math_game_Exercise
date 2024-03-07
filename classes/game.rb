class Game
  attr_accessor :player1, :player2, :current_player, :current_question
  # => Generate instance variables for the players, current player, and current question.
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
    @current_question = generate_question
  end

  # => Generate a new question
  def generate_question
    Question.new
  end

  # => Change the player and generate a new question each turn
  def change_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
    @current_question = generate_question
  end

  # => Check if the game is over, based on if a player runs out of lives.
  def game_end?
    @player1.lives.zero? || @player2.lives.zero?
  end
end