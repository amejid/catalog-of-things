require_relative 'items'

class Grenre < ITEMS
    attr_accessor :name
    attr_reader :id, :items
    def initialize(id, public_date, name, items)
        super(id, publish_date)
        @name = name
        @items =items
    end


    def add_item(item)
      @items =item
    end
end