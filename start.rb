require_relative 'app'

class Start
  def initialize
    @app = App.new
  end

  def start_app(choice)
    if choice >= 1 && choice <= 6
      list_items(choice)
    else
      add_item(choice)
    end
  end

  def list_items(choice)
    case choice
    when 1
      @app.list_books
    when 2
      @app.list_music_albums
    when 3
      @app.list_games
    when 4
      @app.list_genres
    when 5
      @app.list_labels
    when 6
      @app.list_authors
    else
      puts 'Invalid input'
    end
  end

  def add_item(choice)
    case choice
    when 7
      @app.add_book
    when 8
      @app.add_music_album
    when 9
      @app.add_game
    else
      puts 'Invalid input'
    end
  end
end
