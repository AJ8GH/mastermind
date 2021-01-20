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
    let(:expected_output) { ("-" * 80) + "\n" + 'a'.center(80) + "\n" }
    it 'puts line then puts self' do
      expect { 'a'.overline }.to output(expected_output).to_stdout
    end
  end

  context '#under_over_line' do
    let(:expected_output) { ("-" * 80) + "\n" + 'a'.center(80) + "\n" + ("-" * 80) + "\n" }
    it 'puts line, puts self, then puts line' do
      expect { 'a'.under_over_line }.to output(expected_output).to_stdout
    end
  end
end
