module Mastermind
  describe Board do
    before(:all) { @board = Board.new }

    context '#initialize' do
      it 'initializes with two rows' do
        expect(@board.grid.size).to eq 2
      end

      it 'has four objects in each row' do
        expect(@board.grid[0].length).to eq 4
      end

      it 'consitists of cell objects' do
        expect(@board.grid.all? { |row| row.all? { |cell| cell.class == Cell } }).to be true
      end
    end

    context '#grid' do
      it 'returns the grid' do
        expect(@board.grid.map { |row| row.map(&:color) }).to eq [['', '', '', ''],
                                                                  ['', '', '', '']]
      end
    end
  end
end
