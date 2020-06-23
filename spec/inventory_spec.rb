require_relative '../inventory'
require_relative '../car'

describe Inventory do

    before do
        $stdout = StringIO.new
        @blankInventory = Inventory.new
        @filledInventory = Inventory.new([
            Car.new("2010", "Toyota", "Corolla", "Green", "5000"),
            Car.new("2020", "Ford", "F150", "Red", "10000")
        ])
    end

    it "should initialize with empty array by default" do
        expect(@blankInventory.cars).to eq([])
    end

    it "should initialize with an array of cars" do
        expect(@filledInventory.cars.size).to eq(2)
    end

    it "display_cars should print each car in the inventory" do
        expect { @filledInventory.display_cars }.to output(
            "Current Inventory\n2010 Green Toyota Corolla worth approximately $5000\n2020 Red Ford F150 worth approximately $10000\n"
        ).to_stdout
    end

    it "add_car should print new car and add to inventory" do
        expect {  @blankInventory.add_car(
            Car.new("2", "Make", "Model", "Yellow", "5")
        ) }.to output("\nYou added a:\n2 Yellow Make Model worth approximately $5\n").to_stdout
        expect(@blankInventory.cars.size).to eq(1)
    end

    it "sell_car should ask for car to sell" do 
        allow_any_instance_of(Kernel).to receive(:gets).and_return('1')
        allow(@filledInventory).to receive(:display_totals).with(@filledInventory.cars[0]).and_return(nil)
        expect {@filledInventory.sell_car}.to output("Which car do you want to sell?\n1. 2010 Toyota Corolla Green\n2. 2020 Ford F150 Red\n").to_stdout
    end

    it "sell_car should show message when no cars" do 
        allow(@blankInventory).to receive(:display_totals).with(@blankInventory.cars[0]).and_return(nil)
        expect {@blankInventory.sell_car}.to output("No cars for sale\n").to_stdout
    end
  
  end