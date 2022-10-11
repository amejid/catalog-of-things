require_relative 'items'

class MusicAlbum < ITEMS
    attr_accessor :on_spotify
    def initialize(id, public_date, on_spotify)
        super(id, publish_date)
        @on_spotify = on_spotify
    end
    private

    def can_be_archived?
      super || @on_spotify == true
    end
end
