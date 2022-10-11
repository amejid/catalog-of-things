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

  def load_games
    return unless File.exist?('./data/games.json')

    games_loaded = JSON.parse(File.read('./data/games.json'))
    games_loaded.each do |game|
      new_game = Game.new(game['id'], game['publish_date'], game['multiplayer'], game['last_played_at'])
      @games << new_game
    end
  end

  def load_authors
    return unless File.exist?('./data/authors.json')

    authors_loaded = JSON.parse(File.read('./data/authors.json'))
    authors_loaded.each do |author|
      new_author = Author.new(author['id'], author['first_name'], author['last_name'])
      @authors << new_author
    end
  end

  def load_music_albums
    return unless file.exist?('./data/music_albums.json')
    music_albums_loaded = JSON.parse(file.read('./data/music_albums.json'))
    music_albums_loaded.each do |music_albums|
      new_music_albums = music_albums.new(music_albums['id'], music_albums['publish_date'], music_albums['on_spotify'])
      @music_albums << new.music_albums
  end

  def load_genres
    return unless file.exist?('./data/genres.json')
    genres_loaded  = JSON.parse(file.read('./data/genres.json'))
    genres_loaded.each do |genres|
      new_genres = genres.new(genres['id'], genres['name'])
      @genres<< new.genres
  end

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

  def save_game(game)
    new_game = { id: game.id, publish_date: game.publish_date, multiplayer: game.multiplayer,
                 last_played_at: game.last_played_at }
    if File.exist?('./data/games.json')
      games_loaded = JSON.parse(File.read('./data/games.json'))
      games_loaded << new_game
      File.write('./data/games.json', JSON.pretty_generate(games_loaded))
    else
      File.write('./data/games.json', JSON.pretty_generate([new_game]))
    end
  end

  def save_author(author)
    new_author = { id: author.id, first_name: author.first_name, last_name: author.last_name }
    if File.exist?('./data/authors.json')
      authors_loaded = JSON.parse(File.read('./data/authors.json'))
      authors_loaded << new_author
      File.write('./data/authors.json', JSON.pretty_generate(authors_loaded))
    else
      File.write('./data/authors.json', JSON.pretty_generate([new_author]))
    end
  end

  def save_music_album(music_albums)
    new.music_albums = { id: music_albums.id, publish_date: music_albums.publish_date, on_spotify: music_albums.on_spotify }
    if File.exist?('./data/music_albums.json')
      music_albums_loaded = JSON.parse(File.read('./data/music_albums.json'))
      music_albums_loaded << new.music_albums
      File.write('./data/music_albums.json', JSON.pretty_generate(music_albums_loaded))
    else
      File.write('./data/music_albums.json', JSON.pretty_generate([new.music_albums]))
    end
  end

  def save_genre(genres)
    new.genres = { id: genres.id, name: genres.name }
    if File.exist?('./data/genres.json')
      genres_loaded = JSON.parse(File.read('./data/genres.json'))
      genres_loaded << new.genres
      File.write('./data/genres.json', JSON.pretty_generate(genres_loaded))
    else
      File.write('./data/genres.json', JSON.pretty_generate([new.genres]))
    end
  end

  end
end
