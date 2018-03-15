class Event < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => "users_events", :class_name => "User"
  has_one :place
  has_one :picture, as: :imageable, dependent: :destroy
  validates :name, presence: true,length:   {maximum: 50}
  validates :description, presence: true, length:   {maximum: 500}
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
