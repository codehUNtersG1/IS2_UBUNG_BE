# == Schema Information
#
# Table name: usertipactivityrecords
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  tipactivity_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Usertipactivityrecord < ApplicationRecord
  belongs_to :user
  belongs_to :tipactivity
end
