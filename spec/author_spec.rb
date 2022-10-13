require_relative '../author'

describe Author do
  context 'With valid arguments' do
    it 'should return string id' do
      author = Author.new(nil, 'Isaac', 'Asimov')
      expect(author.id.class).to eq String
    end

    it 'should return first name' do
      author = Author.new(nil, 'Isaac', 'Asimov')
      expect(author.first_name).to eq 'Isaac'
    end

    it 'should return last name' do
      author = Author.new(nil, 'Isaac', 'Asimov')
      expect(author.last_name).to eq 'Asimov'
    end

    it 'should add item to the instance' do
      author = Author.new(nil, 'Isaac', 'Asimov')
      item = Item.new(nil, Date.parse('1999-04-07'))
      author.add_item(item)
      expect(author.items.length).to eq 1
    end
  end
end
