require 'date'
require_relative 'preserve'
require_relative 'book'
require_relative 'label'
require_relative 'music_album'
require_relative 'genre'
require_relative 'game'
require_relative 'author'

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

  def list_labels
    return puts 'No labels found' if @preserve.labels.empty?

    @preserve.labels.each_with_index do |label, index|
      puts "#{index + 1}) Title: #{label.title}, Color: #{label.color}"
    end
  end

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
    puts 'Book created successfully'
  end

  def add_music_album; end

  def add_game; end

  def add_label
    puts 'Enter title'
    title = gets.chomp
    puts 'Enter color'
    color = gets.chomp

    new_label = Label.new(nil, title, color)
    @preserve.labels.push(new_label)
    @preserve.save_label(new_label)
    puts 'Label created successfully'
  end

  def add_genre; end

  def add_author; end
end
