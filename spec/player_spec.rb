require 'player'
describe Player do
  subject(:tom) { Player.new('Tom') } # tom =Player.new('tom')
  subject(:mary) { Player.new('Mary') }

  describe '#name' do
    it 'return player name' do
      expect(tom.name).to eq 'Tom'
    end
  end
  describe '#hp' do
    it 'return player health' do
      expect(tom.hp).to eq Player::DEFAULT_HP
    end
  end
end
