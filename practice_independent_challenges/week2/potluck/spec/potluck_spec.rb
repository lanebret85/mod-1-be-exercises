require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
    
    describe "existance" do
        it "exists" do
            potluck = Potluck.new("7-13-18")

            expect(potluck).to be_a(Potluck)
        end
    end

    describe "#attributes" do
        it "should have readable attributes" do
            potluck = Potluck.new("7-13-18")

            expect(potluck.date).to eq("7-13-18")
            expect(potluck.dishes).to eq([])
        end
    end

    describe "#add_dish" do
        it "should be able to add a dish object to the dishes array" do
            potluck = Potluck.new("7-13-18")

            couscous_salad = Dish.new("Couscous Salad", :appetizer)
            cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

            potluck = Potluck.new("7-13-18")
            potluck.add_dish(couscous_salad)
            potluck.add_dish(cocktail_meatballs)

            expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
            expect(potluck.dishes.length).to eq(2)
        end
    end

    describe "#add_dish" do
        it "should be able to add dishes to the dishes array" do 
            potluck = Potluck.new("7-13-18")

            couscous_salad = Dish.new("Couscous Salad", :appetizer)
            expect(potluck.add_dish(couscous_salad)).to eq([couscous_salad])

            summer_pizza = Dish.new("Summer Pizza", :appetizer)
            expect(potluck.add_dish(summer_pizza)).to eq([couscous_salad, summer_pizza])

            roast_pork = Dish.new("Roast Pork", :entre)
            expect(potluck.add_dish(roast_pork)).to eq([couscous_salad, summer_pizza, roast_pork])

            cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
            expect(potluck.add_dish(cocktail_meatballs)).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs])

            candy_salad = Dish.new("Candy Salad", :dessert)
            expect(potluck.add_dish(candy_salad)).to eq([couscous_salad, summer_pizza, roast_pork, cocktail_meatballs, candy_salad])
        end
    end

    describe "#get_all_from_category" do
        it "should return elements in the dishes array based on their category" do
            potluck = Potluck.new("7-13-18")

            couscous_salad = Dish.new("Couscous Salad", :appetizer)
            summer_pizza = Dish.new("Summer Pizza", :appetizer)
            roast_pork = Dish.new("Roast Pork", :entre)
            cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
            candy_salad = Dish.new("Candy Salad", :dessert)

            potluck.add_dish(couscous_salad)
            potluck.add_dish(summer_pizza)
            potluck.add_dish(roast_pork)
            potluck.add_dish(cocktail_meatballs)
            potluck.add_dish(candy_salad)
            
            expect(potluck.get_all_from_category(:appetizer)).to eq([couscous_salad, summer_pizza])
            expect(potluck.get_all_from_category(:appetizer).first).to eq(couscous_salad)
            expect(potluck.get_all_from_category(:appetizer).first.name).to eq("Couscous Salad")
        end
    end

    describe "#menu and #ratio" do
        it "should return different arrays for each of the categories of elements in the dishes array" do
            potluck = Potluck.new("7-13-18")

            couscous_salad = Dish.new("Couscous Salad", :appetizer)
            summer_pizza = Dish.new("Summer Pizza", :appetizer)
            roast_pork = Dish.new("Roast Pork", :entre)
            cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
            candy_salad = Dish.new("Candy Salad", :dessert)
            bean_dip = Dish.new("Bean Dip", :appetizer)

            potluck.add_dish(couscous_salad)
            potluck.add_dish(summer_pizza)
            potluck.add_dish(roast_pork)
            potluck.add_dish(cocktail_meatballs)
            potluck.add_dish(candy_salad)
            potluck.add_dish(bean_dip)

            expect(potluck.menu).to eq({:appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],:entres=>["Cocktail Meatballs", "Roast Pork"],:desserts=>["Candy Salad"]})
            expect(potluck.ratio(:appetizer)).to eq(50.0)
        end
    end

end