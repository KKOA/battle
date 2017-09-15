require 'player'
describe Player do
  describe '#name' do
    it 'return player name' do
      player = Player.new('Tom')
      expect(player.name).to eq 'Tom'
    end
  end
  describe '#hp' do
    it 'return player health' do
      player = Player.new('Tom')
      expect(player.hp).to eq Player::DEFAULT_HP
    end
  end

end
