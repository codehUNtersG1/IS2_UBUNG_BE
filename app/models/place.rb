class Place < ApplicationRecord
  validates :name, presence: true, length:  {maximum: 75}
  validates :location, presence: true, length:  {maximum: 100}
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }
end
