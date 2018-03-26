# == Schema Information
#
# Table name: planphyactivityrecords
#
#  id          :integer          not null, primary key
#  plan_id     :integer
#  phyactivity :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Planphyactivityrecord < ApplicationRecord
  belongs_to :plan
  belongs_to :phyactivity
end
