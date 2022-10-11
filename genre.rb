require 'securerandom'

class Genre
  attr_reader :id, :name
  attr_accessor :items

  def initialize(id, name)
    @id = id || SecureRandom.uuid
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.add_genre(self)
  end
end
