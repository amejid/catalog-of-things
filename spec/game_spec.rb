require_relative '../game'

describe Game do
  context 'With valid arguments' do
    it 'should return multiplayer' do
      game = Game.new(nil, Date.parse('2022-02-11'), false, Date.parse('2020-02-02'))
      expect(game.multiplayer).to eq false
    end

    it 'should return last played at' do
      game = Game.new(nil, Date.parse('2022-02-11'), true, Date.parse('2020-02-02'))
      expect(game.last_played_at).to eq Date.new(2020, 0o2, 0o2)
    end
  end
end
