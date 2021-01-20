module Mastermind
  class Board
    attr_accessor :grid

    def initialize(grid = default_grid)
      @grid = grid
    end

    def default_grid
      { code:  Array.new(4) { Cell.new },
        guess: Array.new(4) { Cell.new } }
    end

    def code
      grid[:code].map(&:color)
    end

    def guess
      grid[:guess].map(&:color)
    end

    def any_empty?
      code.any? { |color| color.empty? } ||
      guess.any? { |color| color.empty? }
    end

    # def set_cell_color
    #   grid
    # end
  end
end
