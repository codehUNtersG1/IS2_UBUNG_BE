class Achievement < ApplicationRecord
  has_and_belongs_to_many :users
  validates :name, presence: true, length:  {maximum: 50}
  validates :description, presence: true, length:  {maximum: 200}
  validates :date, presence: true, timeliness: {type: :datetime}
end
