class Plan < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :phyactivities
  validates :name, presence: true
  validates :description, presence: true
  validates :type, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

end
