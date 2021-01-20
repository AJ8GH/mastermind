module Mastermind
  describe Board do
    before(:each) { @board = Board.new }
    let(:default_grid) { [['', '', '', ''], ['', '', '', '']] }

    context '#initialize' do
      it 'initializes with two rows' do
        expect(@board.grid.size).to eq 2
      end

      it 'has four objects in each row' do
        expect(@board.grid[:code].length).to eq 4
        expect(@board.grid[:guess].length).to eq 4
      end

      it 'each row conatins cell objects' do
        expect(@board.grid.all? { |key, value| value.all? { |cell| cell.class == Cell } }).to be true
      end
    end

    context '#grid' do
      it 'returns the grid' do
        expect(@board.grid.map { |key, value| value.map(&:color) }).to eq default_grid
      end
    end

    context '#code' do
      it 'returns the colors in the code row' do
        @board.grid[:code][0].color = :blue
        expect(@board.code).to eq [:blue, '', '', '']
      end
    end

    context '#guess' do
      it 'returns the colors in the guess row' do
        @board.grid[:guess][2].color = :yellow
        expect(@board.guess).to eq ['', '', :yellow, '']
      end
    end

    context '#any_empty?' do
      it 'returns true if all cells are empty' do
        expect(@board.any_empty?).to be true
      end

      it 'returns true if one cell is empty' do
        allow(@board).to receive(:code) { [:blue, :black, :red, :green] }
        allow(@board).to receive(:guess) { ['', :black, :red, :green] }
        expect(@board.any_empty?).to be true
      end

      it 'returns false if no cells are empty' do
        allow(@board).to receive(:code) { [:blue, :black, :red, :green] }
        allow(@board).to receive(:guess) { [:yellow, :black, :red, :green] }
        expect(@board.any_empty?).to be false
      end
    end

    context '#set_cell_color' do
      it 'sets the color of an empty cell' do
        @board.set_cell_color(row: :code, number: 1, color: :black)
        expect(@board.code).to eq ['', :black, '', '']
      end
    end
  end
end
