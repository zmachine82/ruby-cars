step 1:
   arrays are groups of objects... to do something to each object in an array is called iterating

    [Car.new("2010", "Ford", "F150", "Green", "5000"),
        Car.new("2020", "Toyota", "Corolla", "Red", "10000")].each do |car|
            puts car
        end

    the variable car represents each car individually whenever it is that cars turn, 
    so first it will take the green ford and shove it into the variable car
    then it "puts" that car
    then it goes back and takes the red toyota and shoves it into the variable car
    then it "puts" that car

Challenge: 
    Context: We are making a simple Car Inventory System for a small used car dealer. Our first request is to add a simple way to add new inventory into the system as it comes in.

    Objective: We have some structure in place now, lets try doing more than 1 car at a time. Lets assume we already have 2 cars in the lot and are adding a new one. We should display the cars in the lot and then add a new one

    tips:
        lets consider a carlot or inventory class that will have an attribute of a cars array
