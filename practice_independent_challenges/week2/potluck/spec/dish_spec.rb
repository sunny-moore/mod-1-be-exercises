require 'rspec'
require './lib/dish.rb'

describe Dish do
  describe '#initialize' do
    it 'is a Dish' do
      dish = Dish.new('CousCous', :appetizer)

      expect(dish).to be_a Dish
    end
  end
end