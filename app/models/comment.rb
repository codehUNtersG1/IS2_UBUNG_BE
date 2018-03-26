# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :text
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Comment < ApplicationRecord
  validates :description, presence: true , length:  {maximum: 500}
  validates :date, presence: true, timeliness: {type: :datetime}
  validates :user_id, presence: true
end
