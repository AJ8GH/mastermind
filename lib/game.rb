module Mastermind
  class Game
    attr_accessor :players, :current_player, :other_player, :board
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = players.shuffle
    end
  end
end
