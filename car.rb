class Car 
    attr_reader :year, :make, :model, :color, :value
    
    def initialize(year, make, model, color, value)
        @year = year
        @make = make
        @model = model
        @color = color
        @value = value
    end
    
    def to_s
        "#{year} #{color} #{make} #{model} worth approximately $#{value}"
    end
end