require_relative 'player'
require_relative 'cell'
require_relative 'board'
require_relative 'game'

def get_player_names
  puts "Player one, enter your name:"
  player_one = gets.chomp

  puts "Player two, enter your name:"
  player_two = gets.chomp

  @players = [player_one, player_two]
end

def begin_new_game
  get_player_names
  new_game = Mastermind::Game.new(@players)
  new_game.play_game
end

begin_new_game
