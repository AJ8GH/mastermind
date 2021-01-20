module Mastermind
  class Game
    attr_accessor :players, :code_maker, :code_breaker, :board
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @code_maker, @code_breaker = players.shuffle
    end

    def win?
      !board.any_empty? && board.guess == board.code
    end
  end
end
