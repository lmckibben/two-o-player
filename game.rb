class Game
  def initialize(players)
    @players = players
    @round = 0
    @game_over = nil
    @winner = nil
    @current_player = @players[0]
  end

  attr_reader :current_player, :game_over, :winner, :players

  def change_player
    @current_player == @players[0] ? @current_player = @players[1] : @current_player = @players[0]
  end

  def next_round
    @round += 1
    x = rand(1..20)
    y = rand(1..20)
    [x , y]
  end

  def score
    puts "#{@players[0].name}: #{@players[0].lives}/3 vs #{@players[1].name}: #{@players[1].lives}/3"
  end

  def handle_round(question)
    puts "----- ROUND #{@round} ---"
    puts "#{current_player.name}: #{question.question}"
    answer = gets.chomp
    if answer == question.answer.to_s
      handle_right(@current_player)
    else
      handle_wrong(@current_player)
    end
  end

  def handle_right(player)
    puts "#{current_player.name}: Yes! You are correct."
    puts "----- SCORE -----"
    score
    change_player
  end

  def handle_wrong(player)
    puts "#{current_player.name}: Seriously? No!"
    life = @current_player.lose_life

    if life == 0
      change_player
      @winner = @current_player
      @game_over = true
    else
      score
      change_player
    end
  end
end