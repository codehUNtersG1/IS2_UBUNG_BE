class Tipdiet < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => "users_tip_diets", :class_name => "User"
  validates :description, presence: true , length:  {maximum: 500}

end
