class Phyactivity < ApplicationRecord
  has_and_belongs_to_many :plans, :join_table => "plans_physical_activities", :class_name => "Plan"
  has_one :place
  has_many :pictures, as: :imageable
  validates :name, presence: true, length:  {maximum: 50}
  validates :description, presence: true, length:  {maximum: 500}
  validates :duration, presence: true
  validates :required_elements, presence: true , length:  {maximum: 300}
end
