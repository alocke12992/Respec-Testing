require 'rails_helper'

RSpec.describe Car, type: :model do
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
end
