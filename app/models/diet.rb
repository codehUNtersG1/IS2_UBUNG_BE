# == Schema Information
#
# Table name: diets
#
#  id         :integer          not null, primary key
#  name       :string
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Diet < ApplicationRecord
  has_many :userdietrecords
  has_many :users, through: :userdietrecords

  has_many :dietfoodrecords
  has_many :foods, through: :dietfoodrecords

  validates :name, presence: true , length:  {maximum: 50}
  validates :start_date, presence: true , timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
