require 'securerandom'
class Item
  attr_reader :id, :genre, :author, :label, :publish_date

  def initialize(id, publish_date)
    @id = id || SecureRandom.uuid
    @publish_date = publish_date
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def add_author(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  private

  def can_be_archived?
    (DateTime.now - @publish_date).to_i / 365 > 10
  end
end
