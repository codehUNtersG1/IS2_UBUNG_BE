# == Schema Information
#
# Table name: eventplacerecords
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  place_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eventplacerecord < ApplicationRecord
  belongs_to :event
  belongs_to :place
end
