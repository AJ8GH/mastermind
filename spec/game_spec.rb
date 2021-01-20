module Mastermind
  describe Game do
    let(:players) { [Player.new('Magnus'), Player.new('Hikaru')] }
    let(:colors_list) { "Enter a color:\n- blue\n- red\n- black\n- yellow\n-green\n- orange" }

    context '#initialize' do
      it 'creates a new game with 2 players' do
        expect { Game.new(players) }.to_not raise_error
      end

      it 'creates a new game with a new board by default' do
        expect(Game.new(players).board.class).to eq Board
      end

      it 'chooses a code_maker at random' do
        allow_any_instance_of(Array).to receive(:shuffle) { ['Magnus', 'Hikaru'] }
        expect(Game.new(players).code_maker).to eq 'Magnus'
      end

      it 'chooses a code_breaker at random' do
        allow_any_instance_of(Array).to receive(:shuffle) { ['Magnus', 'Hikaru'] }
        expect(Game.new(players).code_breaker).to eq 'Hikaru'
      end
    end

    context '#win?' do
      before(:each) { @game = Game.new(players) }

      it 'returns true if guess matches code with no empties' do
        allow(@game.board).to receive(:code) { [:blue, :black, :red, :green] }
        allow(@game.board).to receive(:guess) { [:blue, :black, :red, :green] }
        expect(@game.win?).to be true
      end

      it 'returns false if guess does not match code' do
        allow(@game.board).to receive(:code) { [:red, :red, :red, :green] }
        allow(@game.board).to receive(:guess) { [:blue, :red, :red, :green] }
        expect(@game.win?).to be false
      end

      it 'returns false when the board is all empty' do
        expect(@game.board.code).to eq ['', '', '', '']
        expect(@game.board.guess).to eq ['', '', '', '']
        expect(@game.win?).to be false
      end
    end

    context '#number_of_matches' do
      before(:each) { @game = Game.new(players) }
      it 'returns 2 when there are 2 matches' do
        allow(@game.board).to receive(:code) { [:blue, :black, :red, :green] }
        allow(@game.board).to receive(:guess) { [:red, :black, :red, :yellow] }
        expect(@game.number_of_matches).to eq 2
      end

      it 'returns 0 when there are no matches' do
        allow(@game.board).to receive(:code) { [:yellow, :yellow, :black, :blue] }
        allow(@game.board).to receive(:guess) { [:blue, :black, :red, :yellow] }
        expect(@game.number_of_matches).to eq 0
      end
    end

    context '#show_colors' do
      let (:expected) { ["* blue", "* red", "* black", "* yellow", "* green",
                         "* orange"].map(&:centralize).join("\n") + "\n" + ('-' * 80) + "\n" +
                         "Choose 4 colours:".center(80) + "\n" + ('-' * 80) + "\n" }

      it 'shows the colors and prompts player to choose 4' do
        expect { Game.new(players).show_colors }.to output(expected).to_stdout
      end
    end
  end
end
