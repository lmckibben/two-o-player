class Game
  def initialize(players)
    @players = players
    @turn = 0
    @game_over = nil
    @winner = nil
    @current_player = @players.sample
  end

  attr_accessor :current_player, :game_over, :winner, :players

  def change_player
    @current_player == @players[0] ? @current_player = players[1] : @players = @players[0]
  end

  def next_round
    @turn += 1
    x = rand(1..20)
    y = rand(1..20)
    [x , y]
  end

end