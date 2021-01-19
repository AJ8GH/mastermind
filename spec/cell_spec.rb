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
    end
  end
end
