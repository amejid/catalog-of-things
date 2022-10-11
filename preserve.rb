require 'json'
require_relative 'book'
require_relative 'label'
require_relative 'music_album'
require_relative 'genre'
require_relative 'game'
require_relative 'author'
class Preserve
  attr_accessor :books, :labels, :games, :authors, :music_albums, :genres

  def initialize
    @books = []
    @labels = []
    @games = []
    @authors = []
    @music_albums = []
    @genres = []
  end

  def load_books
    return unless File.exist?('./data/books.json')

    books_loaded = JSON.parse(File.read('./data/books.json'))
    books_loaded.each do |book|
      new_book = Book.new(book['id'], book['publish_date'], book['publisher'], book['cover_state'])
      @books << new_book
    end
  end

  def load_labels
    return unless File.exist?('./data/labels.json')

    labels_loaded = JSON.parse(File.read('./data/labels.json'))
    labels_loaded.each do |label|
      new_label = Label.new(label['id'], label['title'], label['color'])
      @labels << new_label
    end
  end

  def load_games; end

  def load_authors; end

  def load_music_albums; end

  def load_genres; end

  def save_book(book)
    new_book = { id: book.id, publish_date: book.publish_date, publisher: book.publisher,
                 cover_state: book.cover_state }
    if File.exist?('./data/books.json')
      books_loaded = JSON.parse(File.read('./data/books.json'))
      books_loaded << new_book
      File.write('./data/books.json', JSON.pretty_generate(books_loaded))
    else
      File.write('./data/books.json', JSON.pretty_generate([new_book]))
    end
  end

  def save_label(label)
    new_label = { id: label.id, title: label.title, color: label.color }
    if File.exist?('./data/labels.json')
      labels_loaded = JSON.parse(File.read('./data/labels.json'))
      labels_loaded << new_label
      File.write('./data/labels.json', JSON.pretty_generate(labels_loaded))
    else
      File.write('./data/labels.json', JSON.pretty_generate([new_label]))
    end
  end

  def save_game; end

  def save_author; end

  def save_music_album; end

  def save_genre; end
end
