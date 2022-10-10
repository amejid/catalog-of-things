require_relative 'item'

class Game < Item
  def initialize(id, publish_date, multiplayer, last_played_at)
    super(id, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super && (DateTime.now - @last_played_at).to_i / 365 > 2
  end
end
