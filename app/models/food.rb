class Food < ApplicationRecord
  has_and_belongs_to_many :diets
  has_many :pictures, as: :imageable
end
