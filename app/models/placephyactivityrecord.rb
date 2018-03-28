# == Schema Information
#
# Table name: placephyactivityrecords
#
#  id             :integer          not null, primary key
#  place_id       :integer
#  phyactivity_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Placephyactivityrecord < ApplicationRecord
  belongs_to :place
  belongs_to :phyactivity
end
