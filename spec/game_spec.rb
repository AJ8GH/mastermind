module Mastermind
  describe Game do
    let(:players) { [Player.new('Magnus'), Player.new('Hikaru')] }

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
    end
  end
end
