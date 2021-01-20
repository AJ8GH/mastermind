module Mastermind
  class Board
    attr_accessor :grid, :code, :guess

    def initialize(grid = default_grid)
      @grid = grid
      @code = code_mapper[:code]
      @guess = code_mapper[:guess]
    end

    def default_grid
      Array.new(2) { Array.new(4) { Cell.new } }
    end

    def code_mapper
      rows = { code: grid[0], guess: grid[1] }
    end
  end
end
