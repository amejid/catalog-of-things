require_relative '../label'

describe Label do
  context 'With valid arguments' do
    it 'should return title of the label' do
      label = Label.new(nil, 'Intermediate CPP', 'Yellow')
      expect(label.title).to eq 'Intermediate CPP'
    end

    it 'should return color of the label' do
      label = Label.new(nil, 'Intermediate CPP', 'Yellow')
      expect(label.color).to eq 'Yellow'
    end

    it 'should add item to the instance' do
      label = Label.new(nil, 'Intermediate CPP', 'Yellow')
      item = Item.new(nil, Date.parse('1999-04-07'))
      label.add_item(item)
      expect(label.items.length).to eq 1
    end
  end
end
