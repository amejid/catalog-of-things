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

  def list_games
    return puts 'No games found' if @preserve.games.empty?

    @preserve.games.each_with_index do |game, index|
      puts "#{index + 1}) Multiplayer: #{game.multiplayer},
      Last played at: #{game.last_played_at}, Publish date: #{game.publish_date}"
    end
  end

  def list_genres; end

  def list_labels
    return puts 'No labels found' if @preserve.labels.empty?

    @preserve.labels.each_with_index do |label, index|
      puts "#{index + 1}) Title: #{label.title}, Color: #{label.color}"
    end
  end

  def list_authors
    return puts 'No authors found' if @preserve.authors.empty?

    @preserve.authors.each_with_index do |author, index|
      puts "#{index + 1}) First Name: #{author.first_name}, Last Name: #{author.last_name}"
    end
  end

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

  def add_game
    puts 'Enter multiplayer [Yes / No]'
    multiplayer = gets.chomp
    puts 'Enter last played at in format (YYYY-MM-DD)'
    last_played_at = Date.parse(gets.chomp)
    puts 'Enter the publish date in format (YYYY-MM-DD)'
    publish_date = Date.parse(gets.chomp)

    new_game = Game.new(nil, publish_date, multiplayer, last_played_at)
    @preserve.games.push(new_game)
    @preserve.save_game(new_game)
    puts 'Game created successfully'
  end

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

  def add_author
    puts 'Enter first name'
    first_name = gets.chomp
    puts 'Enter last name'
    last_name = gets.chomp

    new_author = Author.new(nil, first_name, last_name)
    @preserve.authors.push(new_author)
    @preserve.save_author(new_author)
    puts 'Author created successfully'
  end
end
