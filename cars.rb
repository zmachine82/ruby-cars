require_relative 'car'
require_relative 'inventory'
require_relative 'menu'

@inventory = Inventory.new(
    [
        Car.new("2010", "Ford", "F150", "Green", "5000"),
        Car.new("2020", "Toyota", "Corolla", "Red", "10000")
    ])

@menu = Menu.new

@inventory.display_cars

car = @menu.add_car_questions

@inventory.add_car(car)

puts ""

@inventory.display_cars


