class Car < ApplicationRecord
  validates :make, uniqueness: true, presence: true
end
