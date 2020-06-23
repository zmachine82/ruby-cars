require_relative '../inventory'
require_relative '../car'
require_relative '../form_data'

describe FormData do

    before do
        $stdout = StringIO.new
    end

    it "add_car_questions should step though adding a new car" do
        allow(FormData).to receive(:ask_question).with("year").and_return("1991")
        allow(FormData).to receive(:ask_question).with("make").and_return("toy")
        allow(FormData).to receive(:ask_question).with("model").and_return("car")
        allow(FormData).to receive(:ask_question).with("color").and_return("brown")
        allow(FormData).to receive(:ask_question).with("value").and_return("4")
        car = FormData.add_car_questions
        expect(car.year).to eq("1991")
        expect(car.make).to eq("toy")
        expect(car.model).to eq("car")
        expect(car.color).to eq("brown")
        expect(car.value).to eq(4)
    end  
  end