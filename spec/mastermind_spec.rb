describe '#Mastermind' do
  context '#get_player_names' do
    let (:input) { ["Bergkamp\n", "Henry\n"] }
    it "returns an array of the players' names" do
      allow_any_instance_of(Object).to receive(:gets).and_return(*input)
      expect(get_player_names).to eq %w[Bergkamp Henry]
    end
  end
end
