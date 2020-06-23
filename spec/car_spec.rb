require_relative '../car'
require_relative '../structs'

describe Car do

    before do
        @car = Car.new("2010", "Toyota", "Corolla", "Green", "5000")
    end

    it "has an initial year" do
        expect(@car.year).to eq("2010")
    end

    it "has an initial make" do
        expect(@car.make).to eq("Toyota")
    end

    it "has an initial model" do
        expect(@car.model).to eq("Corolla")
    end

    it "has an initial color" do
        expect(@car.color).to eq("Green")
    end

    it "has an initial value as a number" do
        expect(@car.value).to eq(5000)
    end

    it "display a nice string" do
      expect(@car.to_s).to eq("2010 Green Toyota Corolla worth approximately $5000")
    end

    describe "sales tax" do
        it "should return 11% of cars value by default" do 
            expect(@car.sales_tax).to eq(550)
        end

        0.01.step(0.20, 0.01) do |per|
            it "should return % of cars value that is passed in" do 
                tax_percent = per
                expect(@car.sales_tax(tax_percent)).to eq(@car.value * tax_percent)
            end
        end
    end
  
  end