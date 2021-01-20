require_relative 'player'
require_relative 'cell'
require_relative 'board'
require_relative 'game'
require_relative 'core_extensions'

def welcome
  'Welcome to Mastermind!'.under_over_line
end

def get_player_names
  puts "Player one, enter your name:".centralize
  player_one = gets.chomp

  puts "Player two, enter your name:".centralize
  player_two = gets.chomp

  @players = [player_one, player_two]
end

def begin_new_game
  welcome
  get_player_names
  new_game = Mastermind::Game.new(@players)
  new_game.play_game
end
