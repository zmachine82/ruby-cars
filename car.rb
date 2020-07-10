class Car
    attr_accessor :year, :make, :model, :color, :price

    def to_s
        "#{@year} #{@color} #{@make} #{@model} worth approximately #{@price}"
    end
end