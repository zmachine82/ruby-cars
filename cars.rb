def ask_question(value)
    puts ""
    puts "What is the car's #{value}?"
    gets.chomp
end

def display_car(car)
    puts ""
    puts "You added a: "
    puts car
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

puts "Let's add a car!"
year = ask_question("year")
make = ask_question("make")
model = ask_question("model")
color = ask_question("color")
value = ask_question("value")

display_car(Car.new(year, make, model, color, value))


