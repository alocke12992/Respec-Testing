require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'attributes' do
    params = [:make, :model, :price, :color, :interior]
    params.each do |param| 
      it {should respond_to param}
    end
  end
end
