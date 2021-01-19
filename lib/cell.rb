module Mastermind
  class Cell
    attr_accessor(:color)
    def initialize(color = '')
      @color = color
    end
  end
end
