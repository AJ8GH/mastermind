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
        allow_any_instance_of(Array).to receive(:shuffle) { ['Magnus', 'Hikaru']}
        expect(Game.new(players).code_maker).to eq 'Magnus'
      end

      it 'chooses a code_breaker at random' do
        allow_any_instance_of(Array).to receive(:shuffle) { ['Magnus', 'Hikaru']}
        expect(Game.new(players).code_breaker).to eq 'Hikaru'
      end
    end
  end
end
