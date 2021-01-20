describe String do
  context '#centralize' do
    it 'centralizes a string within 80 characters' do
      expect(''.centralize).to eq ''.center(80)
    end
  end

  context '#line' do
    it 'returns a line of 80 hyphens' do
      expect(''.line).to eq('-' * 80)
    end
  end
end
