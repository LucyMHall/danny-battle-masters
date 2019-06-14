require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#attack' do
    it 'damages a player' do
      allow(player_1).to receive(:receive_damage).and_return("Ouch")
      p player_1.receive_damage
      expect(game.attack(player_1)).to eq("Ouch")
    end
  end

  describe '#initialize' do
    it 'excepts two players and saves them' do
      game = Game.new(player_1,player_2)
      expect(game.player_1).to eq(player_1)
      expect(game.player_2).to eq(player_2)
    end
  end

end
