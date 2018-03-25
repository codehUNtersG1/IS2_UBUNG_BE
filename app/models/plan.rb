# == Schema Information
#
# Table name: plans
#
#  id          :integer          not null, primary key
#  name        :string
#  sort        :string
#  description :text
#  start_date  :datetime
#  end_date    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Plan < ApplicationRecord
  has_many :planphyactivityrecords
  has_many :phyactivities, through: :planphyactivityrecords

  validates :name, presence: true, length:  {maximum: 150}
  validates :description, presence: true, length:  {maximum: 500}
  validates :sort, presence: true
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
