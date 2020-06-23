module CsvClient

    def self.read_file(from_file)
        cars = []
        File.readlines(from_file).each do |line|
            year, make, model, color, value = line.split(',')
            cars.push(Car.new(year, make, model, color, value))
        end
        return cars
    end

    def self.add_car(car)
        File.open("cars.csv", "a") do |file|
            file.puts "#{car.year},#{car.make},#{car.model},#{car.color},#{car.value}"
        end
    end

    def self.write_cars(cars)
        File.open("cars.csv", "w") do |file|
            cars.each do |car|
                file.puts "#{car.year},#{car.make},#{car.model},#{car.color},#{car.value}"
            end
        end
    end
end