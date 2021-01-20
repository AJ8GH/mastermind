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

    def get_color
      puts "Choose a color:\n- blue\n- red\n- black\n- yellow\n-green\n- orange"
      @color = gets.chomp.to_sym
      puts "#{@color} selected!"
    end

    def set_new_code
      4.times do |number|
        get_color
        board.set_cell_color(row: :code, number: number, color: @color)
      end
      puts "Code set:\n#{board.code}"
    end

    def set_new_guess
      4.times do |number|
        get_color
        board.set_cell_color(row: :guess, number: number, color: @color)
      end
    end

    def play_game
      puts "#{code_maker}, you are codemaker, set your code:"
      set_new_code

      12.times do |number|
        puts "#{code_breaker}, make your prediction:"
        set_new_guess
        if win?
          return "#{code_breaker} cracked the code in #{number} turns!"
        else
          puts "#{board.guess}\nIncorrect!\nNumber of matches#{number_of_matches}"
        end
        "#{code_maker} wins! #{code_breaker} couldn't crack the code!\nThe code was: #{board.code}"
      end
    end
  end
end
