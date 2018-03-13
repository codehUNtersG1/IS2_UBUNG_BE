class Group < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :picture, as: :imageable
  validates :name, presence: true, length:  {maximum: 50}
  validates :type, presence: true
  validates :description, presence: true , length:  {maximum: 500}
  validates :num_members, presence: true
end
