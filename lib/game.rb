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

    def ask_for_color
      "Enter a color:\n- blue\n- red\n- black\n- yellow\n-green\n- orange"
    end

    def get_color
    end
  end
end
