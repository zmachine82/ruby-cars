require_relative '../menu'
require_relative '../inventory'

describe Menu do

    before do
        @menu = Menu.new(spy('Inventory'))
    end


    it "should display menu" do
        allow_any_instance_of(Menu).to receive(:handle_input).and_return('')
        expect {@menu.display_menu }.to  output(
            "1. Add a Car\n2. List Inventory\n3. Sell Car\nq. to quit\n"
        ).to_stdout
    end
    
    it "should quit when input is q" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('q')
        allow(@menu).to receive(:display_menu).and_return("")
        expect{@menu.handle_input}.to raise_error(SystemExit)
    end

    it "should add car when input is 1" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('1')
        car = Car.new("", "", "", "", "")
        allow(FormData).to receive(:add_car_questions).and_return(car)
        allow(@menu).to receive(:display_menu).and_return("")

        @menu.handle_input
        expect(@menu.inventory).to have_received(:add_car).with(car)
    end

    it "should list cars when input is 2" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('2')
        allow(@menu.inventory).to receive(:display_cars).and_return("done")
        allow(@menu).to receive(:display_menu).and_return("")
        @menu.handle_input
        expect(@menu.inventory).to have_received(:display_cars)
    end

    it "should sell car when input is 3" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return('3')
        allow(@menu.inventory).to receive(:sell_car).and_return("done")
        allow(@menu).to receive(:display_menu).and_return("")
        @menu.handle_input
        expect(@menu.inventory).to have_received(:sell_car)
    end

  
  end