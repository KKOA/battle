require 'player'
require 'game'
describe Game do
  subject(:player1) { Player.new('Tom') }
  subject(:player2) { Player.new('Mary') }
  subject(:game) { Game.new(player1, player2) }

  describe '#attack' do
    it 'deal damage to opponent' do
      expect { game.attack(player2) }.to change { player2.hp }.by(-10)
    end
  end

  describe '#player1' do
    it 'return player1 object' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'return player2 object' do
      expect(game.player2).to eq player2
    end
  end

  describe '#current_turn' do
    it 'return current player\'s turn' do
      expect(game.current_turn).to eq player1
    end
  end

  describe '#swap_turn' do
    it 'return other player\'s turn' do
      game.swap_turn
      expect(game.current_turn).to eq player2
    end
  end

  describe '#swap_turn' do
    it 'return other player\'s turn' do
      4.times { game.swap_turn }
      expect(game.current_turn).to eq player1
    end
  end

  describe '#opponent' do
    context 'no swaps' do
      it 'return oppponent' do
        expect(game.opponent).to eq player2
      end
    end
    context 'after player swaps' do
      it 'return oppponent' do
        3.times { game.swap_turn }
        expect(game.opponent).to eq player1
      end
    end
  end
end
