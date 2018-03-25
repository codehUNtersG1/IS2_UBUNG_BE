# == Schema Information
#
# Table name: places
#
#  id             :integer          not null, primary key
#  name           :string
#  location       :string
#  latitude       :float
#  longitude      :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  phyactivity_id :integer
#  event_id       :integer
#

class Place < ApplicationRecord
  has_one :picture, as: :imageable, dependent: :destroy
  
  validates :name, presence: true, length:  {maximum: 75}
  validates :location, presence: true, length:  {maximum: 100}
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

end
