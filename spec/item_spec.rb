require 'date'
require_relative '../item'
require_relative '../author'
require_relative '../label'
require_relative '../genre'

describe Item do
  context 'With valid arguments' do
    it 'should return string id' do
      item = Item.new(nil, Date.parse('1999-04-07'))
      expect(item.id.class).to eq String
    end

    it 'should return publish date' do
      item = Item.new(nil, Date.parse('1999-04-07'))
      expect(item.publish_date).to eq Date.new(1999, 0o4, 0o7)
    end

    it 'should return an instance of Label class' do
      item = Item.new(nil, Date.parse('1999-04-07'))
      label = Label.new(nil, 'Advanced JS', 'Green')
      item.add_label(label)
      expect(item.label.class).to eq Label
    end

    it 'should return an instance of Author class' do
      item = Item.new(nil, Date.parse('1999-04-07'))
      author = Author.new(nil, 'Isaac', 'Asimov')
      item.add_author(author)
      expect(item.author.class).to eq Author
    end

    it 'should return an instance of Genre class' do
      item = Item.new(nil, Date.parse('1999-04-07'))
      genre = Genre.new(nil, 'Country')
      item.add_genre(genre)
      expect(item.genre.class).to eq Genre
    end
  end
end
