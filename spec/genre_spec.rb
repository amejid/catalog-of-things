require_relative '../genre'

describe Genre do
  context 'With valid arguments' do
    it 'should return name of the Genre' do
      genre = Genre.new(nil, 'Afrobeat')
      expect(genre.name).to eq 'Afrobeat'
    end

    it 'should add item to the instance' do
      genre = Genre.new(nil, 'Afrobeat')
      item = Item.new(nil, Date.parse('1999-04-07'))
      genre.add_item(item)
      expect(genre.items.length).to eq 1
    end
  end
end
