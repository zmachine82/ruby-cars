require_relative '../structs'

describe "Structs" do
    describe Tax do
        before do
            @struct = Tax.new(500, "Sales Tax")
        end

        it "should have an amount" do
            expect(@struct.amount).to eq(500)
        end

        it "should have a tax name" do
            expect(@struct.tax_name).to eq("Sales Tax")
        end
    
    end
  end