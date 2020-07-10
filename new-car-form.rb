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