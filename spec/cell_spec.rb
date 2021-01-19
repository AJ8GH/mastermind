module Mastermind
  describe Cell do

    before(:all) { @cell = Cell.new }

    context '#initialize' do
      it 'initializes with an empty color' do
        expect(@cell.color.empty?).to be true
      end
    end

    context '#color' do
      it 'returns the color value' do
        expect(@cell.color).to eq ''
      end

      it 'can set the color value' do
        @cell.color = :blue
        expect(@cell.color).to eq :blue
      end
    end
  end
end
