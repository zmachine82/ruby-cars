class Menu
    attr_reader :inventory

    def initialize(inventory)
        @inventory = inventory
    end

    def display_menu
        puts "1. Add a Car"
        puts "2. List Inventory"
        puts "3. Sell Car"
        puts "q. to quit"
        handle_input
    end

    def handle_input
        input = gets.chomp
        puts ""
        if input == "1"
            @inventory.add_car(FormData.add_car_questions)
        elsif input == "2"
            @inventory.display_cars
        elsif input == "3"
            @inventory.sell_car
        elsif input == "q"
            exit
        end
        puts ""
        display_menu
    end
end