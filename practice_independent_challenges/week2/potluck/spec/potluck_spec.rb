require 'rspec'
require './lib/dish.rb'
require './lib/potluck.rb'

describe 'Potluck' do
  describe '#initialize' do
    it "is a Potluck" do
      potluck = Potluck.new("7-21-24")

      expect(potluck).to be_a Potluck
    end
    it "has a date" do
      potluck = Potluck.new("7-21-24")

      expect(potluck.date).to eq("7-21-24")
    end
    it "has a dishes array" do
      potluck = Potluck.new("7-21-24")

      expect(potluck.dishes).to be_a Array
      expect(potluck.dishes).to eq []
      expect(potluck.dishes.length).to eq 0
    end
  end
  describe 'add_dish method' do
    it 'can add dishes' do
      dish1 = Dish.new("Couscous Salad", :appetizer)
      dish2 = Dish.new("Cocktail Meatballs", :entre)

      potluck = Potluck.new("7-21-24")
      potluck.add_dish(dish1)
      potluck.add_dish(dish2)

      expect(potluck.dishes.length).to eq 2
      expect(potluck.dishes[0]).to eq dish1
      expect(potluck.dishes[1]).to eq dish2
    end
  end
end