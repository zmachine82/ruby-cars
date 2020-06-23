require_relative '../inventory'
require_relative '../car'
require_relative '../menu'

describe Menu do

    before do
        $stdout = StringIO.new
        @menu = Menu.new
    end

    it "add_car_questions should step though adding a new car" do
        allow(@menu).to receive(:ask_question).with("year").and_return("1991")
        allow(@menu).to receive(:ask_question).with("make").and_return("toy")
        allow(@menu).to receive(:ask_question).with("model").and_return("car")
        allow(@menu).to receive(:ask_question).with("color").and_return("brown")
        allow(@menu).to receive(:ask_question).with("value").and_return("4")
        car = @menu.add_car_questions
        expect(car.year).to eq("1991")
        expect(car.make).to eq("toy")
        expect(car.model).to eq("car")
        expect(car.color).to eq("brown")
        expect(car.value).to eq("4")
    end


    # it "add_car should print new car and add to inventory" do
    #     expect {  @blankInventory.add_car(
    #         Car.new("2", "Make", "Model", "Yellow", "5")
    #     ) }.to output("\nYou added a:\n2 Yellow Make Model worth approximately $5\n").to_stdout
    #     expect(@blankInventory.cars.size).to eq(1)
    # end
  
  end