module Mastermind
  describe Player do
    before(:all) { @player = Player.new('name')}

    context '#initialize' do
      it 'creates a new instance of Player' do
        expect(@player.class).to eq Player
      end
    end

    context '#name' do
      it 'returns the player name' do
        expect(@player.name).to eq 'name'
      end

      it 'can set the player name' do
        @player.name = 'new name'
        expect(@player.name).to eq 'new name'
      end
    end
  end
end
