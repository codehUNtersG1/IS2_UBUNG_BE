class Phyactivity < ApplicationRecord
  has_and_belongs_to_many :plans
  has_one :place
  has_many :pictures, as: :imageable
  validates :name, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :required_elements, presence: true
end
