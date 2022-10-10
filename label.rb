class Label
  attr_reader :title, :color

  def initialize(id, title, color)
    @id = id || rand(1...1000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_label(self)
  end
end
