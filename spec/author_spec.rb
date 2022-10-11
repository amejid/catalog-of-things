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
  end
end
