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
  
end