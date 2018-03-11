class Group < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :picture, as: :imageable
  validates :name, presence: true
  validates :type, presence: true
  validates :description, presence: true
  validates :num_members, presence: true
end
