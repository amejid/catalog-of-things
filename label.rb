require 'securerandom'
class Label
  attr_reader :id, :title, :color
  attr_accessor :items

  def initialize(id, title, color)
    @id = id || SecureRandom.uuid
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_label(self)
  end
end
