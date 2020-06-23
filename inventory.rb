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
end