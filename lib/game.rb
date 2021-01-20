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

    def show_colors
      puts ["* blue", "* red", "* black", "* yellow", "* green", "* orange"].map(&:centralize)
      "Choose 4 colours:".under_over_line
    end

    def get_color
      colors = [:blue, :black, :yellow, :red, :green, :orange]
      while true
        @color = gets.chomp.downcase.to_sym
        if colors.include?(@color)
          return @color
        else
          "Please enter a valid colour:".under_over_line
        end
      end
    end

    def set_new_code
      puts show_colors
      4.times do |number|
        get_color
        board.set_cell_color(row: :code, number: number, color: @color)
      end
      "Code set!".under_over_line
      "Hit return to hide code".underline
      gets
      puts "\n" * 100
    end

    def set_new_guess
      4.times do |number|
        get_color
        board.set_cell_color(row: :guess, number: number, color: @color)
      end
    end

    def play_game
      "#{code_maker}, you are codemaker. Time to set your set your code!".under_over_line
      set_new_code

      12.times do |number|
        "Round #{number + 1}".overline
        "#{code_breaker}, make your prediction:".under_over_line
        set_new_guess
        if win?
          puts "#{code_breaker} wins! They cracked the code in #{number + 1} turns!"; break
        else
          "Incorrect! Number of matches: #{number_of_matches}".overline
        end
      end
      "#{code_maker} wins! #{code_breaker} couldn't crack the code!".under_over_line
    end
  end
end
