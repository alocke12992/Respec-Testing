require 'rails_helper'

RSpec.describe Car, type: :model do
  # Work Flow
  #  Attributes, Validations, custom methods
  describe 'attributes' do
    params = [:make, :model, :price, :color, :interior, :milaege]
    params.each do |param| 
      it {should respond_to param}
    end 
  end

  describe 'validations' do 
    it {should validate_presence_of :make}
    it {should validate_uniqueness_of :make}
  end

  describe 'filtering' do 
    before(:each) do 
      [
        {make: 'Toyota', model: 'Prius', price: 20000},
        {make: 'Honda', model: 'Civic', price: 1900},
        {make: 'Ford', model: 'F-150', price: 13498},
      ].each do |attrs|
        Car.create(attrs)
      end
    end
    it 'sorts by model ASC' do 
      cars = Car.by_model
      expect(cars.first.model).to eq('Civic')
      expect(cars.last.model).to eq('Prius')
    end
  end

end
