class Tipactivity < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => "users_tip_activities", :class_name => "User"
  validates :description, presence: true , length:  {maximum: 500}
end
