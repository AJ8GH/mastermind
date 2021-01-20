module Mastermind
  class Board
    attr_accessor :grid

    def initialize(grid = default_grid)
      @grid = grid
    end

    def default_grid
      Array.new(2) { Array.new(4) { Cell.new } }
    end

    def code
      grid[0].map(&:color)
    end

    def guess
      grid[1].map(&:color)
    end

    def any_empty?
      code.any? { |color| color.empty? } && guess.any? { |color| color.empty? }
    end
  end
end
