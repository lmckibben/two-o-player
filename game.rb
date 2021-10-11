class Game
  def initialize(players)
    @players = players
    @turn = 0
    @game_over = nil
    @winner = nil
    @current_player = @players.sample
  end

  attr_accessor :current_player, :game_over, :winner, :players
end