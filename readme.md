step 1:
   define a simple class and new it up

   a class is a blueprint that makes an object

   each object can have different values for the same attribute ie: car1 can have year = 2010 and car2 can have year = 2020

   class Car
    attr_reader :year

    def initialize(year)
        @year = year
    end
   end

   car1 = Car.new(2010)
   car2 = Car.new(2020)

Challenge: 
    Context: We are making a simple Car Inventory System for a small used car dealer. Our first request is to add a simple way to add new inventory into the system as it comes in.

    Objective: Adding a car class makes sense as a driving force of this application will be around the concept of a car. Having a single definition of what a car is can be encapsulated into the car class. Lets make a car class and use it in our program without breaking functionality

    tips:
        classes can have their own methods, like to_s to make some of our functionality have a good home
