class NewCarForm
    attr_reader :car
    
    def initialize
        @car = Car.new
        @car.year = ask_question("year")
        @car.make = ask_question("make")
        @car.model = ask_question("model")
        @car.color = ask_question("color")
        @car.price = ask_question("price")
    end

    private

    def ask_question(value)
        puts ""
        puts "What is the car's #{value}?"
        gets.chomp
    end
end

class Car
    attr_accessor :year, :make, :model, :color, :price

    def to_s
        "#{@year} #{@color} #{@make} #{@model} worth approximately $#{@price}"
    end
end



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


inventory = Inventory.new

form = NewCarForm.new
car = form.car
inventory.add_car(car)
puts " 2nd car "
form2 = NewCarForm.new
car2 = form2.car
inventory.add_car(car2)

inventory.display_cars



