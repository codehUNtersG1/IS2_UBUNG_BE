class Group < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => "users_groups", :class_name => "User"
  has_one :picture, as: :imageable
  validates :name, presence: true, length:  {maximum: 50}
  validates :sort, presence: true
  validates :description, presence: true , length:  {maximum: 500}
  validates :num_members, presence: true
end
