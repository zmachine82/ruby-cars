step 1:
   define a simple class and new it up

   a class is a blueprint that makes an object

   each object can have different values for the same attribute ie: car1 can have year = 2010 and car2 can have year = 2020

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
    attr_reader :year, :make, :model, :color, :price

    def initialize(year)
        @year = year
    end

    def to_s
        "#{@year} #{@color} #{@make} #{@model} worth approximately $#{@price}"
    end
   end

    form = NewCarForm.new
    car = form.car
    puts car

Challenge: 
    Context: We are making a simple Car Inventory System for a small used car dealer. Our first request is to add a simple way to add new inventory into the system as it comes in.

    Objective: Adding a car class makes sense as a driving force of this application will be around the concept of a car. Having a single definition of what a car is can be encapsulated into the car class. Lets make a car class and use it in our program without breaking functionality, We also can make our question asking form a separate class the generates a car.

    tips:
        classes can have their own methods, like to_s to make some of our functionality have a good home
