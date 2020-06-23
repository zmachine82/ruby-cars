class Car 
    attr_reader :year, :make, :model, :color, :value
    
    def initialize(year, make, model, color, value)
        @year = year
        @make = make
        @model = model
        @color = color
        @value = value.to_i
    end
    
    def to_s
        "#{year} #{color} #{make} #{model} worth approximately $#{value}"
    end

    def sales_tax(tax=0.11)
        @value * tax
    end

    def taxes_and_fees
        st = Tax.new(sales_tax, "Sales Tax")
        license_fee = Tax.new(100, "License Fee")
        [st, license_fee]
    end

    def total_amount
        total = @value
        taxes_and_fees.each do |tax|
            total += tax.amount
        end
        return total
    end
end