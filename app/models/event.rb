class Event < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :place
  has_one :picture, as: :imageable
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
