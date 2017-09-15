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

  describe '#attack' do
    it 'deal damage to opponent' do
      player1 = Player.new('Tom')
      player2 = Player.new('Mary')
      player1.attack(player2)
      expect(player2.hp).to eq 50
    end
  end
end
