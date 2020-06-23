require_relative '../car'

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

    it "has an initial value" do
        expect(@car.value).to eq("5000")
    end

    it "display a nice string" do
      expect(@car.to_s).to eq("2010 Green Toyota Corolla worth approximately $5000")
    end
  
  end