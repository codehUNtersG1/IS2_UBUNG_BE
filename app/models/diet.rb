class Diet < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :foods
  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
