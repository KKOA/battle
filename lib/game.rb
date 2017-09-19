class Game
  attr_reader :current_turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.take_damage
  end

  def swap_turn
    @current_turn = (@current_turn == player1) ? player2 : player1
  end

  def opponent
    @players.reject { |player| player == @current_turn }.first
  end

end
