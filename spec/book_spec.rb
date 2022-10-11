require 'date'
require_relative '../book'

describe Book do
  context 'With valid arguments' do
    it 'should return publisher name' do
      book = Book.new(nil, Date.parse('1999-04-07'), 'Birhan and Selam', 'bad')
      expect(book.publisher).to eq 'Birhan and Selam'
    end

    it 'should return cover state' do
      book = Book.new(nil, Date.parse('1999-04-07'), 'Birhan and Selam', 'bad')
      expect(book.cover_state).to eq 'bad'
    end
  end
end
