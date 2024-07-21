require 'rspec'
require './lib/dish.rb'

describe Dish do
  describe '#initialize' do
    it 'is a Dish' do
      dish = Dish.new('CousCous', :appetizer)

      expect(dish).to be_a Dish
    end
    it 'has a name' do
      dish = Dish.new('CousCous', :appetizer)

      expect(dish.name).to eq 'CousCous'
    end
    it 'has a category' do
      dish = Dish.new('CousCous', :appetizer)

      expect(dish.category).to eq :appetizer
    end
  end
end