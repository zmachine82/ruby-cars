require_relative 'inventory'
require_relative 'car'
require_relative 'new-car-form'
require_relative 'DataFormatter'

inventory = Inventory.new

form = NewCarForm.new
car = form.car
inventory.add_car(car)
puts " 2nd car "
form2 = NewCarForm.new
car2 = form2.car
inventory.add_car(car2)

inventory.display_cars