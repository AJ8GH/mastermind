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

    def number_of_matches
      matches = 0
      4.times do |index|
        matches += 1 if board.code[index] == board.guess[index]
      end
      matches
    end

    def ask_for_color
      "Enter a color:\n- blue\n- red\n- black\n- yellow\n-green\n- orange"
    end

    # def get_color
    #   color = gets.chomp
    # end
  end
end
