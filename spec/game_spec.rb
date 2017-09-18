require 'player'
require 'game'
describe Game do
  subject(:player2) { Player.new('Mary') }
  subject(:game) { Game.new }

  describe '#attack' do
    it 'deal damage to opponent' do
      expect { game.attack(player2) }.to change { player2.hp }.by(-10)
    end
  end
end
