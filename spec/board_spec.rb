module Mastermind
  describe Board do

    context '#initialize' do
      before(:all) { @board = Board.new }

      it 'initializes with two rows' do
        expect(@board.grid.size).to eq 2
      end

      it 'has four objects in each row' do
        expect@board.grid[0].length
      end
    end
  end
end
