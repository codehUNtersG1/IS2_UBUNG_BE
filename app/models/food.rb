class Food < ApplicationRecord
  has_and_belongs_to_many :diets
  has_many :pictures, as: :imageable
  validates :description, presence: true, length:  {maximum: 200}
  validates :type, presence: true
  validates :name, presence: true , length:  {maximum: 30}
  validates :averageprice, presence: true
end
