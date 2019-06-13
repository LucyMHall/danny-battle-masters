require 'player'

describe Player do
  subject(:bob) { Player.new("Bob") }
  subject(:jim) { Player.new("Jim") }

  describe '#name' do
    it 'returns player name' do
      expect(bob.name).to eq("Bob") 
    end
  end

  describe '#hit_points' do
    it 'returns player name' do
      expect(bob.hit_points).to eq(described_class::DEFAULT_HIT_POINTS) 
    end
  end
    
  describe '#receive_damage' do
    it 'reduces player hit points' do
      expect { jim.receive_damage }.to change { jim.hit_points }.by(-10)   
    end
  end
end
