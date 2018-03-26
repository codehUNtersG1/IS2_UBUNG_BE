# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  start_date  :datetime
#  end_date    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
  has_many :usereventrecords
  has_many :users, through: :usereventrecords

  has_many :eventplacerecords
  has_many :places, through: :eventplacerecords

  has_one :picture, as: :imageable, dependent: :destroy

  validates :name, presence: true,length:   {maximum: 50}
  validates :description, presence: true, length:   {maximum: 500}
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}
end
