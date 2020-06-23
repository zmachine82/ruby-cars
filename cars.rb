def ask_question(value)
    puts ""
    puts "What is the car's #{value}?"
    gets.chomp
end



class Car 
    attr_reader :year, :make, :model, :color, :value
    
    def initialize(year, make, model, color, value)
        @year = year
        @make = make
        @model = model
        @color = color
        @value = value
    end
    
    def to_s
        "#{year} #{color} #{make} #{model} worth approximately $#{value}"
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

inventory = Inventory.new(
    [
        Car.new("2010", "Ford", "F150", "Green", "5000"),
        Car.new("2020", "Toyota", "Corolla", "Red", "10000")
    ]
)
inventory.display_cars

puts ""
puts "Let's add a car!"
year = ask_question("year")
make = ask_question("make")
model = ask_question("model")
color = ask_question("color")
value = ask_question("value")

inventory.add_car(Car.new(year, make, model, color, value))

puts ""

inventory.display_cars


