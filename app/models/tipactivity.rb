# == Schema Information
#
# Table name: tipactivities
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tipactivity < ApplicationRecord
  has_many :usertipactivityrecords
  has_many :users, through: :usertipactivityrecords

  validates :description, presence: true , length:  {maximum: 500}
end
