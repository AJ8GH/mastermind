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
      color_grid = color_mapper
      rows = { code: color_grid[0], guess: color_grid[1] }
    end

    def color_mapper
      self.grid.map { |row| row.map(&:color) }
    end
  end
end
