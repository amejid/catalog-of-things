require 'date'
require_relative 'preserve'
require_relative 'book'

class App
  def initialize
    @preserve = Preserve.new
    @preserve.load_books
    @preserve.load_games
    @preserve.load_music_albums
    @preserve.load_labels
    @preserve.load_authors
    @preserve.load_genres
  end

  def list_books
    return puts 'No books found' if @preserve.books.empty?

    @preserve.books.each_with_index do |book, index|
      puts "#{index + 1}) Publisher: #{book.publisher}, Publish date: #{book.publish_date}, Cover: #{book.cover_state}"
    end
  end

  def list_music_albums; end

  def list_games; end

  def list_genres; end

  def list_labels; end

  def list_authors; end

  def add_book
    puts 'Enter publisher'
    publisher = gets.chomp
    puts 'Enter publish date in format (YYYY-MM-DD)'
    publish_date = Date.parse(gets.chomp)
    puts 'Enter the cover state'
    cover_state = gets.chomp

    new_book = Book.new(nil, publish_date, publisher, cover_state)
    @preserve.books.push(new_book)
    @preserve.save_book(new_book)
    puts 'Book added successfully'
  end

  def add_music_album; end

  def add_game; end

  def add_label; end

  def add_genre; end

  def add_author; end
end
