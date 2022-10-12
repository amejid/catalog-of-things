require 'date'
require_relative '../music_album'

describe MusicAlbum do
  context 'With valid arguments' do
    it 'should return On Spotify status' do
      music_album = MusicAlbum.new(nil, Date.parse('1999-04-07'), true)
      expect(music_album.on_spotify).to eq true
    end
  end
end
