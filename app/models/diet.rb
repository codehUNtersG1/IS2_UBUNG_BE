class Diet < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :foods
  validates :name, presence: true , length:  {maximum: 50}
  validates :start_date, presence: true , timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
