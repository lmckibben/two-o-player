require_relative './player'
require_relative './question'
require_relative './game'

player1 = Player.new("Player One")
player2 = Player.new("Player Two")

game = Game.new([player1, player2])

puts "Let the games begin! #{game.current_player.name} your turn frist"