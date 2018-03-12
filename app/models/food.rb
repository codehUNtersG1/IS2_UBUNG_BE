class Food < ApplicationRecord
  has_and_belongs_to_many :diets
  has_many :pictures, as: :imageable
  validates :description, presence: true
  validates :type, presence: true
  validates :name, presence: true
  validates :averageprice, presence: true
end
