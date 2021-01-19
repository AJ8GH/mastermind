module Mastermind
  describe Player do
    context '#initialize' do
      it 'creates a new instance of Player' do
        expect(Player.new('').class).to eq Player
      end
    end

    context '#name' do
      it 'returns the player name' do
        expect(Player.new('name').name).to eq 'name'
      end
    end
  end
end
