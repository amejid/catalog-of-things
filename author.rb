class Author
  attr_reader :first_name, :last_name

  def initialize(id, first_name, last_name)
    @id = id || rand(1...1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.add_author(self)
  end
end
