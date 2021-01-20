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

  context '#underline' do
    let(:expected_output) { 'a'.center(80) + "\n" + ("-" * 80) + "\n" }

    it 'puts self.centralize then puts line' do
      expect { 'a'.underline }.to output(expected_output).to_stdout
    end
  end

  context '#overline' do
    it '' do

    end
  end

  context '#over_under_line' do
    it '' do

    end
  end
end
