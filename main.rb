require_relative 'app'

def main
    app = App.new
    puts "Welcome to School Library App!"
    puts ''
    loop do
        puts "Please choose an option by entering number:"
        puts "1) List all books"
        puts "2) List all people"
        puts "3) Create a person"
        puts "4) Create a book"
        puts "5) Create a rental"
        puts "6) List all rentals for a given person id"
        puts "7) Exit"
        option = gets.chomp
        case option
        when "1"
            app.display_books
        when "2"
            app.display_people
        when "3"
            app.create_person
        when "4"
            app.create_book
        when "5"
            app.create_rental
        when "6"
            app.display_rentals
        when "7"
            exit_app
        else
            puts "Invalid option. Please try again."
        end
        puts ''
    end
end

def exit_app
    puts "Thank you for using this app!"
    puts ''
    exit
end

main