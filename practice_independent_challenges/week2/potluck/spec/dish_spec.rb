require "./lib/dish"

RSpec.describe Dish do
    
    describe "existance" do
        it "exists" do
            dish = Dish.new("Couscous Salad", :appetizer)

            expect(dish).to be_a(Dish)
        end
    end

    describe "#name" do
        it "has a readable name" do
            dish = Dish.new("Couscous Salad", :appetizer)

            expect(dish.name).to eq("Couscous Salad")
        end
    end

    describe "#category" do
        it "has a readable category" do
            dish = Dish.new("Couscous Salad", :appetizer)

            expect(dish.category).to eq(:appetizer)
        end
    end

    
    
end