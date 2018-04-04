class Plan < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :phyactivities
  validates :name, presence: true, length:  {maximum: 150}
  validates :description, presence: true, length:  {maximum: 500}
  validates :type, presence: true
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}





end
