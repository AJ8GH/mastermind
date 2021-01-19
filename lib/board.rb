module Mastermind
  class Board
    attr_accessor :grid

    def initialize(grid = default_grid)
      @grid = grid
    end

    def default_grid
      Array.new(2) { Array.new(4) { Cell.new } }
    end
  end
end
