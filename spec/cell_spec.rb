module Mastermind
  describe Cell do

    before(:all) { @cell = Cell.new }

    context '#initialize' do
      it 'initializes with an empty value' do
        expect(@cell.value.empty?).to be true
      end
    end
  end
end
