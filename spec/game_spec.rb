require_relative '../game'

describe Game do
    context 'With valid arguments' do
        it 'should return string id' do
        game = Game.new(nil, '2022-02-02', 'Yes', '2020-02-02')
        expect(game.id.class).to eq String
        end

        it 'should return publish date' do
        game = Game.new(nil, '2022-02-11', 'No', '2020-02-02')
        expect(game.publish_date).to eq '2022-02-11'
        end

        it 'should return multiplayer' do
        game = Game.new(nil, '2022-02-11', 'No', '2020-02-02')
        expect(game.multiplayer).to eq 'No'
        end

        it 'should return last played at' do
        game = Game.new(nil, '2022-02-11', 'No', '2020-02-02')
        expect(game.last_played_at).to eq '2020-02-02'
        end
    end
end