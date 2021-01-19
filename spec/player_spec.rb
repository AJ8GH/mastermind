module Mastermind
  describe Player do
    context '#initialize' do
      it 'creates a new instance of Player' do
        expect(Player.new('').class).to eq Player
      end
    end
  end
end
