class Plan < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => "users_plans", :class_name => "User"
  has_and_belongs_to_many :phyactivities, :join_table => "plans_physical_activities", :class_name => "Phyactivity"
  validates :name, presence: true, length:  {maximum: 150}
  validates :description, presence: true, length:  {maximum: 500}
  validates :type, presence: true
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
