require_relative 'car'
require_relative 'inventory'
require_relative 'form_data'
require_relative 'menu'
require_relative 'structs'
require_relative 'csv_client'



@inventory = Inventory.new(CsvClient.read_file("cars.csv"))


puts "Welcome to Ted's used cars inventory"
loop do 
    Menu.new(@inventory).display_menu
end


