class Inventory
    attr_reader :cars

    def initialize(cars = [])
        @cars = cars
    end

    def display_cars
        puts "Current Inventory"
        @cars.each do |car|
            puts car
        end
    end

    def add_car(car)
        @cars.push(car)
        puts ""
        puts "You added a:"
        puts car
    end

    def sell_car
        if @cars.size <= 0
            puts "No cars for sale"
        else
            puts "Which car do you want to sell?"
            @cars.each_with_index do |car, i|
                puts "#{i + 1}. #{car.year} #{car.make} #{car.model} #{car.color}"
            end
            input = gets.chomp.to_i
            if input > @cars.size || input < 0
                puts "Enter valid number"
                sell_car
            end
            display_totals(@cars[input - 1])
        end
    end

    def display_totals(car)
        car.taxes_and_fees.each do |tax|
            puts "#{tax.tax_name}: #{tax.amount}"
        end
        puts "Total: #{car.total_amount}"
        puts ""
        puts "Ready to sell? y/n?"
        input = gets.chomp
        if input == "y"
            @cars.delete(car)
        elsif input == "n"
            puts "not sold"
        else
            puts "not valid answer"
        end
    end
end