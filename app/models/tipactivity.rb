class Tipactivity < ApplicationRecord
  has_and_belongs_to_many :users
  validates :description, presence: true , length:  {maximum: 150}
end
