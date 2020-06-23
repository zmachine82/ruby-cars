require_relative 'car'
require_relative 'inventory'
require_relative 'form_data'
require_relative 'menu'
require_relative 'structs'

@inventory = Inventory.new(
    [
        Car.new("2010", "Ford", "F150", "Green", "5000"),
        Car.new("2020", "Toyota", "Corolla", "Red", "10000")
    ])


puts "Welcome to Ted's used cars inventory"
loop do 
    Menu.new(@inventory).display_menu
end


