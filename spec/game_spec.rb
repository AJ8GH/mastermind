module Mastermind
  describe Game do
    let(:magnus) { Player.new('Magnus') }
    let(:hikaru) { Player.new('Hikaru') }

    context '#initialize' do
      it 'creates a new game with 2 players' do
        expect { Game.new([magnus, hikaru]) }.to_not raise_error
      end
    end
  end
end
