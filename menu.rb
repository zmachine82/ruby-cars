class Menu
    def add_car_questions
        puts ""
        puts "Let's add a car!"
        year = ask_question("year")
        make = ask_question("make")
        model = ask_question("model")
        color = ask_question("color")
        value = ask_question("value")
        Car.new(year, make, model, color, value)
    end

    private

    def ask_question(value)
        puts ""
        puts "What is the car's #{value}?"
        gets.chomp
    end
end