class Car < ApplicationRecord
  validates :make, uniqueness: true, presence: true

  def self.by_model
    order(:model)
  end 

  def self.by_price(direction = :asc)
    order(price: direction)
  end 

  def honk 
    'BEEP BEEP'
  end 

  def paint(new_color)
    self.color = new_color
  end 

  def info
    {
      make: self.make,
      model: self.model,
      color: self.color, 
      price: self.price,
    }
  end
end
