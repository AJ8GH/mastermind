module Mastermind
  describe Cell do

    before(:all) { @cell = Cell.new }

    context '#initialize' do
      it 'initializes with an empty color' do
        expect(@cell.color.empty?).to be true
      end
    end
  end
end
