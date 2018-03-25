# == Schema Information
#
# Table name: achievements
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Achievement < ApplicationRecord
  has_many :userachievementrecords
  has_many :users, through: :userachievementrecords

  validates :name, presence: true, length:  {maximum: 50}
  validates :description, presence: true, length:  {maximum: 200}
  validates :date, presence: true, timeliness: {type: :datetime}

end
