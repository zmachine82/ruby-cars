class Menu
    attr_reader :inventory

    def initialize(inventory = Inventory.new)
        @inventory = inventory
        @options = [
            "1. Add new car",
            "2. List inventory",
            "3. Sell car",
            "q. Quit app"
        ]
        display_menu
    end

    def display_menu
        @options.each do |o|
            puts o
        end
        handle_input
    end

    def handle_input
        input = gets.chomp.downcase
        case input
        when "1"
           @inventory.add_car(NewCarForm.new.car)
        when "2"
            @inventory.display_cars
        when "3"
            puts "cannot sell cars yet"
        when "q"
            exit
        else
            puts "I don't know what #{input} does yet. Try a different command."
        end
        display_menu
    end
end