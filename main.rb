require_relative 'start'

def main
  start = Start.new
  puts 'Catalog of my things'

  loop do
    puts "\nPlease choose an option by entering a number:\n1 - List all books"
    puts "2 - List all music albums\n3 - List of games"
    puts "4 - List all genres\n5 - List all labels\n6 - List all authors"
    puts "7 - Add a book\n8 - Add a music album\n9 - Add a game"
    puts "10 - Add a label\n11 - Add a genre\n12 - Add an author\n13 - Exit"
    choice = gets.chomp.to_i

    if choice == 13
      puts 'Thanks for using this app!'
      break
    end

    start.start_app(choice)
  end
end

main
