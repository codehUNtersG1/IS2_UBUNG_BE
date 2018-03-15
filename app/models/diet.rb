class Diet < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => "users_diets", :class_name => "User"
  has_and_belongs_to_many :foods, :join_table => "diets_foods", :class_name => "Food"
  validates :name, presence: true , length:  {maximum: 50}
  validates :start_date, presence: true , timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
