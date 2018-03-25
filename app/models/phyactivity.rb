# == Schema Information
#
# Table name: phyactivities
#
#  id                :integer          not null, primary key
#  name              :string
#  description       :text
#  duration          :string
#  required_elements :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Phyactivity < ApplicationRecord
  has_many :planphyactivityrecords
  has_many :plans, through: :planphyactivityrecords

  has_one :place
  has_many :pictures, as: :imageable, dependent: :destroy

  validates :name, presence: true, length:  {maximum: 50}
  validates :description, presence: true, length:  {maximum: 500}
  validates :duration, presence: true
  validates :required_elements, presence: true , length:  {maximum: 300}
end
