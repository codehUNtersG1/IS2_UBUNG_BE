# == Schema Information
#
# Table name: userachievementrecords
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  achievement_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Userachievementrecord < ApplicationRecord
  belongs_to :user
  belongs_to :achievement
end
